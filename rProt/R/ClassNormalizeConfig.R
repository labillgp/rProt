setClass("NormalizeConfig",
         slots = c(
             no_modification_tag="character",            ## Replace null modification field by this value
             min_data_per_replicate="integer",           ## Minimum number of data point per technical replicate
             max_missing_values_per_replicate="integer", ## Max number of missing data point per technical replicate
             nb_top_peptides="integer",                  ## Number of top peptides to keep for analysis
             function_name="character",                  ## Name of funcion used to normalize the raw dataset
             normative_peptide_pattern="character"       ## If not NA, will be used to select peptides to normalize dataset
             )
         )



validate_normalize_config <- function(object) {
  if( is.na(object@no_modification_tag) )
    return("Please provide a value for <no_modification_tag> such as 'None'")
  
  if( is.na(object@min_data_per_replicate) | object@min_data_per_replicate < 0 )
    return("Please provide a positive number for the minimum data points requiered per replicate")
  
  if( is.na(object@max_missing_values_per_replicate) | object@max_missing_values_per_replicate < 0 )
    return("Please provide a positive number for the maximum missing data points allowed per replicate")
  
  if( is.na(object@no_modification_tag) | object@no_modification_tag < 0 )
    return("Please provide number of most variable peptides to cluster")

  TRUE
}

setValidity("NormalizeConfig", validate_normalize_config)

if(FALSE) {
  config = new("NormalizeConfig")
  validObject(config) # FALSE
  config@no_modification_tag <- "None"
  config@min_data_per_replicate <- as.integer(1)
  config@max_missing_values_per_replicate <- as.integer(1)
  config@nb_top_peptides <- as.integer(400)
  validObject(config) # TRUE
}