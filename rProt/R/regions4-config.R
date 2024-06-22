regions4_config <- function() {
  config = new("WorkflowConfig")

  #config@normalize    = mouse_xct_config_normalize()
  #config@aggregate    = mouse_xct_config_aggregate()
  config@nmf          = regions4_config_nmf()
  config@consensus    = regions4_config_consensus()
  config@signature    = regions4_config_signatures()[[ 'all' ]]
  config@graph        = regions4_config_graph()

  config
}


if(FALSE) {
  config <- mouse_xct_config()
  validObject(config)
}
