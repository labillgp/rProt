mouse_xct_config_normalize <- function() {
  config <- new("NormalizeConfig")
  
  config@no_modification_tag <- "None"                      
  config@min_data_per_replicate <- as.integer(1)
  config@max_missing_values_per_replicate <- as.integer(1)
  config@nb_top_peptides <- as.integer(400)
  config@function_name <- "normalize_xct"
  config@normative_peptide_pattern <- ""

  config
}