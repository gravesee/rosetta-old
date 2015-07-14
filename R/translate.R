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
    out[[i]] <- export.pretty.tree(tree, pfx, i, mod.data)
  }

  out <- c(out, finalizer(obj, lang, pfx, n))
  do.call(c, out)
}

export.pretty.tree <- function(x, pfx, i, mod.data) UseMethod("export.pretty.tree")

export.pretty.tree.sas <- function(x, pfx, i, mod.data) {

  text <- list("\n")
  recurse <- function(x, pfx, n, depth) {
    sp <- paste(rep("  ", depth - 1), collapse = "") # spacing

    vid <- x[n,'best'] # variable ID
    vnm <- mod.data$vars[vid] # variable text
    val <- x[n, 'split'] # split value

    if (x[n,'status'] == -1) { # base case is terminal node
      text[[length(text)+1]] <<- sprintf("%s%s_TREE_%04d = %s;\n", sp, pfx, i, x[n,'pred'])
      return(text)
    }

    # create logic for split
    if (x[n, 'vtype'] == 1) { # numeric split
      ltxt <- sprintf("%sif %s <= %s then do;\n", sp, vnm, val)
      rtxt <- sprintf("%sif %s >  %s then do;\n", sp, vnm, val)
    } else { # ordered & factors
      lvl <- mod.data$lvls[[vid]] # variable levels
      ids <- if (x[n, 'vtype'] == 2) 1:val else which(toBinary(val) == 1)

      memL <- paste(lvl[ids], collapse = "','")
      memR <- paste(lvl[!(lvl %in% memL)], collapse = "','")

      ltxt <- sprintf("%sif %s in ('%s') then do;\n", sp, vnm, memL)
      rtxt <- sprintf("%sif %s in ('%s') then do;\n", sp, vnm, memR)
    }

    # go left
    text[[length(text)+1]] <<- ltxt
    recurse(x, pfx, x[n,'left'], depth+1)

    # else, go right
    text[[length(text)+1]] <<- sprintf("%send; else\n", sp)
    text[[length(text)+1]] <<- rtxt
    recurse(x, pfx, x[n,'right'], depth+1)

    # check for missing and recurse
    if (mod.data$miss) {
      text[[length(text)+1]] <<- sprintf("%send; else do;\n", sp, vnm)
      recurse(x, pfx, x[n,'miss'], depth+1)
    }

    text[[length(text)+1]] <<- sprintf("%send;\n", sp)

    return(text)
  }

  outdat <- do.call(c, recurse(x, pfx, 1, 1))
  outdat
}

export.pretty.tree.ecl <- function(x, pfx, i, mod.data) {

  text <- list(sprintf("\n%s_TREE_%04d := ", pfx, i))
  recurse <- function(x, pfx, n, depth) {

    sp <- paste(rep("  ", depth - 1), collapse = "") # spacing

    vid <- x[n,'best'] # variable ID
    vnm <- mod.data$vars[vid] # variable text
    val <- x[n, 'split'] # split value

    if (x[n,'status'] == -1) { # base case is terminal node
      text[[length(text)+1]] <<- sprintf("%s", x[n,'pred'])
      return(text)
    }

    # create logic for split
    if (x[n, 'vtype'] == 1) { # numeric split
      ltxt <- sprintf("%s(NULL < %s and %s <= %s) => ", sp, vnm, vnm, val)
      rtxt <- sprintf("\n%s(%s > %s) => ", sp, vnm, val)
    } else { # ordered & factors
      lvl <- mod.data$lvls[[vid]] # variable levels
      ids <- if (x[n, 'vtype'] == 2) 1:val else which(toBinary(val) == 1)

      memL <- paste(lvl[ids], collapse = "','")
      memR <- paste(lvl[!(lvl %in% memL)], collapse = "','")

      ltxt <- sprintf("%s(%s in ['%s']) => ", sp, vnm, memL)
      rtxt <- sprintf("\n%s(%s in ['%s']) => ", sp, vnm, memR)
    }

    # go left
    text[[length(text)+1]] <<- "map(\n"
    text[[length(text)+1]] <<- ltxt
    recurse(x, pfx, x[n,'left'], depth+1)
    text[[length(text)+1]] <<- ", "

    # else, go right
    text[[length(text)+1]] <<- rtxt
    recurse(x, pfx, x[n,'right'], depth+1)

    # check for missing and recurse
    if (mod.data$miss) {
      text[[length(text)+1]] <<- ", "
      recurse(x, pfx, x[n,'miss'], depth+1)
    }

    text[[length(text)+1]] <<- ")"

    return(text)
  }


  outdat <- do.call(c, recurse(x, pfx, 1, 1))
  outdat <- c(outdat, ";\n")
  outdat
}
