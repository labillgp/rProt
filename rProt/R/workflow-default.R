workflow_default <- function(eds) {
  
  eds <- eds_prepare(eds)
  eds <- eds_normalize(eds)
  eds <- eds_aggregate(eds)
  eds <- eds_nmf(eds)
  graph_nmf_coefmaps(eds)
  
  eds <- eds_signature(eds)  
  
  eds
}