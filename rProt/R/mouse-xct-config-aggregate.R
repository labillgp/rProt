mouse_xct_config_aggregate <- function() {
  config = new("AggregateConfig")
  
  config@columns <- c("Gene", "Peptide")
  config@function_name <- "mean"
  config@sep <- "|"
  
  config
  }