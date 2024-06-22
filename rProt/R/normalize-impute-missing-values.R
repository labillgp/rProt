normalize_impute_missing_values <- function(ds, eds) {
  ds.complete <- apply(ds, 1, function(x) normalize_impute_missing_values_vector(x, eds)) 
  ds.complete <- t(ds.complete)
  rownames(ds.complete) <- rownames(ds)
  ds.complete
}

