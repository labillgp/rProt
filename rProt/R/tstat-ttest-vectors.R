## Previously Tvalue
tstat_ttest_vectors <- function(v1, v2) {
  if ( all(is.na(v1)) | all(is.na(v2)) ) {
    print("[TValue] ALL values are NA")
    return (NA)
  }
  v <- list(v1, v2)
  m <-  lapply(v, function(x) mean(x, na.rm = T))
  s <- lapply(v, function(x) sd(x, na.rm = T))
  n <- lapply(v, function(x) length(na.omit(x)))
  return( (m[[1]] - m[[2]]) / sqrt( s[[1]]^2/n[[1]] + s[[2]]^2/n[[2]] ) ) 
}