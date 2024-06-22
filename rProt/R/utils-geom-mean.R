utils_geom_mean <- function(x, ...) {
  v <- exp(mean(log(x), ...))
  ## stopifnot(!(is.na(v))) -> if there is an NA, then no consensus
  v
}