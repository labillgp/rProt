nmf_get_offset <- function(eds) {
  m <- min(eds@result@ds_aggregated)

  if ( m >= 0 )
    return(0)
  
  ceiling(-m)
  
}