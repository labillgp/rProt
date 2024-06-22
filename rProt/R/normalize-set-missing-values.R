# Set missing code to NA and count missing values per row
###
normalize_set_missing_values <- function(ds, missing_value=0) {
  ds[ds == missing_value] <- NA
  ds
}
