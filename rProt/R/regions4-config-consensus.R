regions4_config_consensus <- function() {
  config = new("ConsensusConfig")
  config@function_name <- "consensus_geometric_rank_signature"
  config@top_number <- as.integer(999999)
  config
}

