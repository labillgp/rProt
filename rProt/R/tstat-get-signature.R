tstat_get_signature <- function(eds, sig_name=NA) {
  
  if( is.na(sig_name) ) {
    return ( names(eds@result@tstat_signature ))
  }
  
  eds@result@tstat_signature[[sig_name]]
  
}
