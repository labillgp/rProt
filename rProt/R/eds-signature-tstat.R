eds_signature_tstat <- function(eds) {
  
  sigs <- eds@config@signature@tstat_signatures
  
  if(length(sigs) == 0) {
    return(eds)
  }
  
  for ( i in 1:(length(sigs)) ) {
    g1 <- sigs[[i]]$g1
    g2 <- sigs[[i]]$g2
    eds <- tstat(eds, g1, g2)
  }
  
  eds
}
