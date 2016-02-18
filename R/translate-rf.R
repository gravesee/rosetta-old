#' Convert integer to vector of 1s and 0s
#'
#' Turns integer split representation into vector of class membership
#'
#' @param y an integer
#' @return a \code{numeric} vector of 1s and 0s
toBinary <- function(y) {
  stopifnot(length(y) == 1, mode(y) == 'numeric')
  q1  <- (y / 2) %/% 1
  r   <- y - q1 * 2
  res <- c(r)
  while (q1 >= 1) {
    q2 <- (q1 / 2) %/% 1
    r  <- q1 - q2 * 2
    q1 <- q2
    res <- c(res, r)
  }
  res
}

#' Convert a vector of 1s and 0s to an integer
#'
#' Turns a vector of 1s and 0s representing class membership into an integer
#'
#' @param v an \code{integer} vector
#' @return an integer value
fromBinary <- function(v) {
  if (length(v) == 1) {if (v == 0) return(v)}
  sum(sapply(which(v == 1) - 1, function(x) 2^x))
}

mod.data.randomForest <- function(obj) {
  mod.data <- list()

  mod.data$vtype <- with(obj$forest, ifelse(
    ncat > 1 & sapply(xlevels, is.character), 3,
    ifelse(
      ncat == 1 & sapply(xlevels, is.character), 2, 1)))

  mod.data$vars <- names(obj$forest$ncat)
  mod.data$lvls <- obj$forest$xlevels
  mod.data$miss <- FALSE # support missing nodes?
  mod.data$ncat <- obj$forest$ncat
  mod.data$resp <- rf$classes

  return(mod.data)
}

pretty.tree.randomForest <- function(obj, n, mod.data=NULL) {

  if (is.null(mod.data)) mod.data <- mod.data.randomForest(obj)

  # get variable types of non-terminal nodes
  vtypes <- with(obj$forest, ifelse(bestvar[,n] > 0,
                                    mod.data$vtype[bestvar[,n]], 0))

  # get number of categories for non-terminal nodes
  f <- obj$forest$bestvar[,n] > 0
  vtypes <- numeric(length(f))
  vtypes[f] <- mod.data$vtype[obj$forest$bestvar[f, n]]

  ncats <- with(obj$forest, ifelse(bestvar[,n] > 0, mod.data$ncat[bestvar[,n]], 0))

  res <- structure(
    with(obj$forest, cbind(
      'left'   = if(!exists('treemap')) leftDaughter[,n]  else treemap[,,n][,1],
      'right'  = if(!exists('treemap')) rightDaughter[,n] else treemap[,,n][,2],
      'status' = nodestatus[,n],
      'best'   = bestvar[,n],
      'pred'   = if(obj$type == "classification") nodepred[,n]-1 else nodepred[,n],
      'split'  = xbestsplit[,n],
      'vtype'  = vtypes,
      'ncat'   = ncats)),
    class="pretty.tree")
  res
}

translate.randomForest <- function(obj, lang="sas", pfx, n) {

  stopifnot(inherits(obj, "randomForest"))
  stopifnot(lang %in% c("sas","ecl"))

  mod.data <- mod.data.randomForest(obj)

  out <- list()
  for (i in 1:n) {
    tree <- pretty.tree.randomForest(obj, i, mod.data)
    class(tree) <- c(class(tree), tolower(lang))
    out[[i]] <- export.pretty.tree(tree, pfx, i, mod.data, adaptor.sas())
  }

  #out <- c(out, finalizer(obj, lang, pfx, n))
  unlist(out)
}



export.pretty.tree <- function(x, pfx, i, mod.data, adaptor) {
  text <- list(adaptor$PRE)
  recurse <- function(x, n, depth=1) {
    s <- paste(rep("  ", depth - 1), collapse = "") # spacing
    vid  <- x[n,'best'] # variable ID
    vnm  <- mod.data$vars[vid] # variable text
    val  <- x[n, 'split'] # split value
    type <- x[n, 'vtype'] # variable type

    ### BASE CASE ###
    if (x[n,'status'] == -1) { # base case is terminal node
      text[[length(text)+1]] <<- adaptor$BASE(s, pfx, i, x[n,'pred'])
      return(text)
    }

    ### TREE LOGIC ###
    memL <- NULL; memR <- NULL
    if (type %in% c(2,3)) {
      lvl <- mod.data$lvls[[vid]] # variable levels
      ids <- if (x[n, 'vtype'] == 2) 1:val else which(toBinary(val) == 1)
      memL <- paste(lvl[ids], collapse = "','")
      memR <- paste(lvl[!(lvl %in% memL)], collapse = "','")
    }

    ### LEFT ###
    text[[length(text)+1]] <<- if(type == 1) {
      adaptor$LTXT$num(s, vnm, val)
    } else {
      adaptor$LTXT$fac(s, vnm, memL)
    }

    recurse(x, x[n,'left'], depth+1)

    ### RIGHT ###
    text[[length(text)+1]] <<- if(type == 1) {
          adaptor$RTXT$num(s, vnm, val)
        } else {
          adaptor$RTXT$fac(s, vnm, memR)
        }

    recurse(x, x[n,'right'], depth+1)
    text[[length(text)+1]] <<- adaptor$END
    return(text)
  }

  do.call(c, recurse(x, 1))
  # c(do.call(c, recurse(x, 1)), adaptor$POST)
}

adaptor.sas <- function() {
  list(
    PRE  = "\n",
    BASE = function(s, pfx, i, x) sprintf("%s%s_TREE_%04d = %s;\n", s, pfx, i, x),
    LTXT = list(
      'num'=function(s, vnm, val) sprintf("%sif %s <= %s then do;\n", s, vnm, val),
      'fac'=function(s, vnm, memL) sprintf("%sif %s in ('%s') then do;\n", s, vnm, memL)),
    RTXT = list(
      'num'=function(s, vnm, val) sprintf("%sif %s >  %s then do;\n", s, vnm, val),
      'fac'=function(s, vnm, memR) sprintf("%sif %s in ('%s') then do;\n", s, vnm, memR)),
    LEFT = list(
      NULL
    ),
    RIGHT = function(s) sprintf("%send; else\n", s),
    MISS = list(
      function(s, vnm) sprintf("%send; else do;\n", s, vnm)
    ),
    END = function(s) sprintf("%send;\n", s),
    POST = NULL
  )}
