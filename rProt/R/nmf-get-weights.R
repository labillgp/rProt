nmf_get_weights <- function(eds) {
  ds <- eds@result@ds_aggregated
  matrix(1, nrow(ds), ncol(ds))
}