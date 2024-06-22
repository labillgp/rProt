tstat <- function(eds, g1, g2=NA) {
  
  if( any(! g1 %in% eds@genotypes )) {
    message = paste0("Not all genotypes specified are present in the dataset: ", paste(g1, collapse = ","))
    stop(message)
  }
  
  g2 <- utils_get_g2(eds, g1, g2)
  
  if( any(! g2 %in% eds@genotypes )) {
    message = paste0("Not all genotypes specified are present in the dataset: ", paste(g2, collapse = ","))
    stop(message)
  }
  
  if(! .hasSlot(eds@result, "tstat_signature") )  {
    eds@result@tstat_signature <- list()
  }
  
  sig_name <- tstat_get_signature_name(eds, g1, g2)
  sig <- tstat_ttest_genotypes(eds, eds@result@ds_aggregated, g1, g2)
  
  eds@result@tstat_signature[[ sig_name ]] <- sig
  
  eds
}
