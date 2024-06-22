normalize_impute_missing_values_vector <- function(v, eds) {

  r_ <- eds@runs[!eds@runs_excluded]
  f_ <- factor(r_, levels=unique(r_))

  v <- by(v, f_, function(x) {
    m <- mean(x, na.rm = TRUE)
    x[ is.na(x) ] <- m
    x
  })

  unlist(v)
}
