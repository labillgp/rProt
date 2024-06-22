## Allows to specify the signature before calculating the cluters

nmf_define_signature <- function(eds, genotypes, cluster_name, w_index) {
  
  if( any(! genotypes %in% eds@genotypes )) {
    message = paste0("eds_nmf_signature: Not all genotypes specified are present in the dataset: ", paste(genotypes, collapse = ","))
    stop(message)
  }
  
 
  if(! .hasSlot(eds@result, "nmf_signature") )  {
    eds@result@nmf_signature <- list()
  }
  
  sig_name <- paste(genotypes, collapse = "_")
  
  eds@result@nmf_signature[[sig_name]] <- list( cluster_name = cluster_name, w_index = w_index )

  eds
}

