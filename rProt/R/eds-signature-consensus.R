eds_signature_consensus <- function(eds) {
  config <- eds@config@signature
  
  cons_sigs <- config@consensus_signatures
  tstat_sigs <- config@tstat_signatures
  nmf_sigs <- config@nmf_signatures
  
  if(length(cons_sigs) == 0) {
    return(eds)
  }
  
  for ( i in 1:(length(cons_sigs)) ) {
    tstat_id <- cons_sigs[[i]]$tstat
    g1 <- tstat_sigs[[tstat_id]]$g1
    g2 <- tstat_sigs[[tstat_id]]$g2
    g2 <- utils_get_g2(eds, g1, g2)
    
    tstat_name <- tstat_get_signature_name(eds, g1, g2)
    tstat_sig <- tstat_get_signature(eds, tstat_name)

    nmf_id <- cons_sigs[[i]]$nmf    
    genotypes <- nmf_sigs[[nmf_id]]$genotypes
    nmf_sig <- nmf_get_signature(eds, genotypes)
    nmf_name <- nmf_get_signature_name(genotypes)
    
    consensus_sig_name <- consensus_get_signature_name( "tstat", tstat_name, "nmf", nmf_name)
    
    eds <- consensus(eds, consensus_sig_name, tstat_sig, nmf_sig)
  }
  
  eds
}
