eds_signature_nmf <- function(eds) {
  sigs <- eds@config@signature@nmf_signatures
  
  if(length(sigs) == 0) {
    return(eds)
  }
  
  for ( i in 1:(length(sigs)) ) {
    genotypes <- sigs[[i]]$genotypes
    cluster_name <- sigs[[i]]$cluster_name
    w_index <- sigs[[i]]$w_index
    eds <- nmf_define_signature(eds, genotypes, cluster_name, w_index)
  }
  
  eds
}

