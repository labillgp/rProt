consensus <- function(eds, consensus_sig_name, sig1, sig2) {
  
  if(! .hasSlot(eds@result, 'consensus_signature') ) {
    eds@result@consensus_signature <- list()
  }
  
  consensus_function <- get( eds@config@consensus@function_name )
  top_number <- eds@config@consensus@top_number
  cons <- consensus_function(sig1, sig2, top_number)
  
  eds@result@consensus_signature[[ consensus_sig_name ]] <- cons
  
  eds
  
}