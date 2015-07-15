### LANGUAGE TRANSLATIONS GO HERE ###

#' Generate translated code from various R tree models
#'
#' This function generates translated code of a specified language and returns
#' it in a character vector.
#'
#' The generated code is written to standard output.  See example for how
#' to write to a file.
#'
#' @param obj a tree-based model object (e.g. gbm, randomForest)
#' @param lang language to translate object into (e.g. 'sas', 'ecl')
#' @param pfx string to prepend to each tree prediction 'pfx_TREE_0000N'
#' @param n number of trees to print. Prints \code{1:n} tree predictions
#' @return returns a character vector containing all of the translated text
#' @export translate
translate <- function(obj, lang="sas", pfx, n) {

  stopifnot(any(class(obj) %in% c("gbm", "randomForest")))
  stopifnot(lang %in% c("sas","ecl"))

  mod.data <- mod.data(obj)

  out <- list()
  for (i in 1:n) {
    tree <- pretty.tree(obj, i, mod.data)
    class(tree) <- c(class(tree), tolower(lang))
    out[[i]] <- export.pretty.tree(tree, pfx, i, mod.data, adaptor(tree))
  }

  out <- c(out, finalizer(obj, lang, pfx, n))
  unlist(out)
}

adaptor <- function(x) UseMethod("adaptor")

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
      text[[length(text)+1]] <<- eval(adaptor$BASE)
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
    text[[length(text)+1]] <<- sapply(adaptor$LEFT, function(x) {
      if (is.null(x)) {
        eval(if(type == 1) adaptor$LTXT$num else adaptor$LTXT$fac, parent.frame(3))
      } else {
        eval(x, parent.frame(3))
      }
    })
    recurse(x, x[n,'left'], depth+1)

    ### RIGHT ###
    text[[length(text)+1]] <<- sapply(adaptor$RIGHT, function(x) {
      if (is.null(x)) {
        eval(if(type == 1) adaptor$RTXT$num else adaptor$RTXT$fac, parent.frame(3))
      } else {
        eval(x, parent.frame(3))
      }
    })
    recurse(x, x[n,'right'], depth+1)

    ### MISSING ###
    if (mod.data$miss) {
      text[[length(text)+1]] <<- eval(adaptor$MISS)
      recurse(x, x[n,'miss'], depth+1)
    }

    text[[length(text)+1]] <<- eval(adaptor$END)
    return(text)
  }

  c(do.call(c, recurse(x, 1)), adaptor$POST)
}

adaptor.sas <- function(x) {
list(
  PRE  = "\n",
  BASE = substitute(sprintf("%s%s_TREE_%04d = %s;\n", s, pfx, i, x[n,'pred'])),
  LTXT = list(
    'num'=substitute(sprintf("%sif %s <= %s then do;\n", s, vnm, val)),
    'fac'=substitute(sprintf("%sif %s in ('%s') then do;\n", s, vnm, memL))),
  RTXT = list(
    'num'=substitute(sprintf("%sif %s >  %s then do;\n", s, vnm, val)),
    'fac'=substitute(sprintf("%sif %s in ('%s') then do;\n", s, vnm, memR))),
  LEFT = list(
      NULL
  ),
  RIGHT = list(
    substitute(sprintf("%send; else\n", s)),
    NULL
  ),
  MISS = list(
    substitute(sprintf("%send; else do;\n", s, vnm))
  ),
  END = substitute(sprintf("%send;\n", s)),
  POST = NULL
)}

adaptor.ecl <- function(x) {
  list(
    PRE  = substitute(sprintf("\n%s_TREE_%04d := ", pfx, i)),
    BASE = substitute(sprintf("%s", x[n,'pred'])),
    LTXT = list(
      'num'=substitute(sprintf("%s(NULL < %s and %s <= %s) => ", s, vnm, vnm, val)),
      'fac'=substitute(sprintf("%s(%s in ['%s']) => ", s, vnm, memL))),
    RTXT = list(
      'num'=substitute(sprintf("\n%s(%s > %s) => ", s, vnm, val)),
      'fac'=substitute(sprintf("\n%s(%s in ['%s']) => ", s, vnm, memR))),
    LEFT = list(
      "map(\n",
      NULL
    ),
    RIGHT = list(
      ", ",
      NULL
    ),
    MISS = list(
      ", "
    ),
    END = ")",
    POST = ";\n"
  )}
