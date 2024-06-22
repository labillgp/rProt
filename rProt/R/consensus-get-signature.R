consensus_get_signature <- function(eds, sig_name=NA) {
  if( is.na(sig_name) ) {
    return( names(eds@result@consensus_signature))
  }
 
  eds@result@consensus_signature[[ sig_name ]]
}
