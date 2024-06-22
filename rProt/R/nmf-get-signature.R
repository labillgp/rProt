nmf_get_signature  <- function(eds, genotypes=NA) {
  
  if( any(is.na(genotypes)) ) {
    return ( names(eds@result@nmf_signature ))
  }
  
  sig_name <- nmf_get_signature_name(genotypes)
  sig_def <- eds@result@nmf_signature[[ sig_name ]]
  
  eds@result@nmf_cluster[[ sig_def$cluster_name ]]@fit@W[ ,sig_def$w_index ]
  
}