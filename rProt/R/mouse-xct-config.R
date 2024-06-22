mouse_xct_config <- function() {
  config = new("WorkflowConfig")
  
  config@normalize    = mouse_xct_config_normalize()
  config@aggregate    = mouse_xct_config_aggregate()
  config@nmf          = mouse_xct_config_nmf()
  config@consensus    = mouse_xct_config_consensus()
  # config@signature    =  ## Not set here
  config@graph        = mouse_xct_config_graph()
  
  config
}


if(FALSE) {
  config <- mouse_xct_config()
  validObject(config)
}