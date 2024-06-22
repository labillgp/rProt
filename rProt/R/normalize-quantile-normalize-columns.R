normalize_quantile_normalize_columns <- function(ds) {
  ds.quant <- normalize.quantiles(as.matrix(ds))
  dimnames(ds.quant) <- dimnames(ds)
  ds.quant
}