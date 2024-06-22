setClass("AggregateConfig",
         slots = c(
             columns="character",                ## list of annotations columns used to aggregate the dataset
             function_name="character",          ## Used to aggregate the normalized da taset
             sep="character"                     ## separator used to build and parse column namses
             )
         )



validate_aggregate_config <- function(object) {
  
  if( any(is.na(object@components)) )
    return("Please provide non-na components for |-splited rownames used to aggregate normalized dataset")
  
  if( is.na(object@function_name) )
    return("Please provide a name for the function used to aggregate the normalized dataset")
}

setValidity("AggregateConfig", validate_aggregate_config)


if(FALSE) {
  c = new("AggregateConfig")
  validObject(c)
  c@components <- c(1)
  c@function_name <- "name"
  validObject(c)
}



