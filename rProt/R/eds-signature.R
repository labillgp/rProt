eds_signature <- function(eds) {
  
  eds <- eds_signature_tstat(eds)
  eds <- eds_signature_nmf(eds)
  eds <- eds_signature_consensus(eds)
  
}