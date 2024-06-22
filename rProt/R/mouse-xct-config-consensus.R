mouse_xct_config_consensus <- function() {
  config = new("ConsensusConfig")
  config@function_name <- "consensus_geometric_rank_signature"
  config@top_number <- as.integer(50)
  config
}
