eds_nmf <- function(eds) {
  
  if(! .hasSlot(eds@result, "nmf_cluster") )  {
    eds@result@nmf_cluster <- list()
  }
  
  config <- eds@config@nmf
  
  get_k_range <- get(config@get_k_range_function_name)
  get_weights <- get(config@get_weights_function_name)
  get_offset <- get(config@get_offset_function_name)
  
  p.seed <- config@seed
  p.method <- config@nmf_algorithm
  p.weights <- get_weights(eds)
  p.nrun <- config@nrun
  
  positive <- eds@result@ds_aggregated + nmf_get_offset(eds)
  positive <- positive[ order(positive[, 1]), ]   ## define order of data based on data. checking if NMF is influenced by that
  
  for( k in get_k_range(eds)) {
    print(paste0("Computing nmf cluster for ", eds@tag, " based on k=", k))
    clust <- nmf(positive, k, seed = p.seed, method = p.method, weight = p.weights, nrun=p.nrun)
    eds@result@nmf_cluster[[ nmf_get_cluster_name(k) ]] <- clust 
  }
  
  eds
}