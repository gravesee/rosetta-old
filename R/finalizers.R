finalizer <- function(obj, lang, pfx, n) UseMethod("finalizer")

finalizer.randomForest <- function(obj, lang, pfx, n) {
  if (tolower(lang) == 'sas') {
    out <- list(
      "\n/* Final Score Calculation*/\n",
      sprintf("%s_prob = max(0.1, sum(of %s_TREE_:))/%d;\n", pfx, pfx, n),
      sprintf("%s_lgt = log(%s_prob/(1 - %s_prob));", pfx, pfx, pfx)
    )
  }
}

finalizer.gbm <- function(obj, lang, pfx, n) {
  if (tolower(lang) == 'sas') {
    out <- list(
      "\n/* Final Score Calculation */\n",
      sprintf("%s_lgt = %s + sum(of %s_TREE_:);", pfx, obj$initF, pfx)
    )
  }
}
