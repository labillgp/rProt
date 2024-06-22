utils_get_g2 <- function(eds, g1, g2) {
  if( any(is.na(g2) )) {
    g2 <- eds@genotypes[! eds@genotypes %in% g1 ]
  } 
  
  g2
  
}