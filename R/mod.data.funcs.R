
mod.data <- function(x) UseMethod("mod.data")

### MOD DATA NEEDS THE FOLLOWING:
# 1. vtype
# 2. vars
# 3. lvls
# 4. miss
# 5. ncat
# 6. Anything that is not unique to a tree and should be shared
###
mod.data.randomForest <- function(obj) {
  mod.data <- new.env(parent=globalenv())

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

mod.data.gbm <- function(obj) {
  mod.data <- new.env(parent=globalenv())

    mod.data$vtype <- with(obj, ifelse(
        sapply(var.levels, is.numeric), 1,
      ifelse(var.type == 0, 2, 3)))

  ncat <- ifelse(mod.data$vtype == 1, 1, sapply(obj$var.levels, length))

  mod.data$xbestsplit <- sapply(obj$c.splits, function(x) {
    fromBinary(ifelse(x == -1, 0, 1))
  })

  mod.data$vars <- obj$var.names
  mod.data$lvls <- obj$var.levels
  mod.data$miss <- TRUE # support missing nodes?
  mod.data$ncat <- ncat
  mod.data$class <- class(obj)

  return(mod.data)
}
