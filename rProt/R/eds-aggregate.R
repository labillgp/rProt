eds_aggregate <- function(eds) {
  agg_func = get(eds@config@aggregate@function_name)
  
  components_idx <- 1:(length(eds@config@aggregate@columns))
  
  ds <- aggregate_by_rownames_components(eds@result@ds_normalized, components_idx, agg_func, eds@config@aggregate@sep)
  
  eds@result@ds_aggregated <- ds
  
  eds
}