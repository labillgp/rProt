regions4_config_nmf <- function() {
  config = new("NmfConfig")
  config@get_annotations_function_name <- "nmf_get_annotations"
  config@get_offset_function_name <- "nmf_get_offset"
  config@seed <- as.integer(123456)
  config@nrun <- as.integer(200)
  config@nmf_algorithm <- nmfAlgorithm("ls-nmf")
  config@get_weights_function_name <- "nmf_get_weights"
  config@get_k_range_function_name <- "nmf_get_k_range"
  config
}
