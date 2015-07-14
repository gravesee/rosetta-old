pretty.tree <- function(obj, n, mod.data) UseMethod("pretty.tree")

### vtypes: 3 == factor, 2 == ordered, 1 == numeric
pretty.tree.randomForest <- function(obj, n, mod.data=NULL) {

  if (is.null(mod.data)) mod.data <- mod.data(obj)

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

### vtypes: 3 == factor, 2 == ordered, 1 == numeric
pretty.tree.gbm <- function(obj, n, mod.data=NULL) {

  if (is.null(mod.data)) mod.data <- mod.data(obj)

  # get variable types of non-terminal nodes
  f <- obj$trees[[n]][[1]] > -1
  vtypes <- numeric(length(f))
  vtypes[f] <- mod.data$vtype[obj$trees[[n]][[1]][f] + 1]

  ncats <- with(obj, ifelse(trees[[n]][[1]] > -1,
                            mod.data$ncat[trees[[n]][[1]] + 1], 0))

  splits <- ifelse(vtypes == 3,
                   mod.data$xbestsplit[obj$trees[[n]][[2]] + 1],
                   obj$trees[[n]][[2]])

  res <- structure(with(obj, cbind(
    'left'   = obj$trees[[n]][[3]] + 1,
    'right'  = obj$trees[[n]][[4]] + 1,
    'miss'   = obj$trees[[n]][[5]] + 1,
    'status' = ifelse(obj$trees[[n]][[1]] > -1, 1, -1),
    'best'   = ifelse(obj$trees[[n]][[1]] > -1, obj$trees[[n]][[1]] + 1, 0),
    'pred'   = obj$trees[[n]][[8]],
    'split'  = splits,
    'vtype'  = vtypes,
    'ncat'   = ncats)),
    class="pretty.tree")
  res
}
