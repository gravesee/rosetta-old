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
