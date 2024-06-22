eds_prepare <- function(eds) {
  config <- eds@config@aggregate
  
  ## Check that annotations are defined
  if(! length(eds@annotations) > 0 ) {
    stop("Please define at least one colum to annotate the dataset")
  }
  
  ## check that all annotations are columns
  if(! all(eds@annotations %in% colnames(eds@ds))) {
    stop("Not all annotations are columns of the experimental dataset")
  }
  
  ## check that aggregation components are annotations
  if( ! all( config@columns %in% eds@annotations )) {
    stop("Not all aggregation columns are annotations in the experimental dataset")
  }
  
  ## Check that the separator contains only one character
  if( length( config@sep ) != 1) {
    stop("The aggregation separator should be only one character")
  }
  
  ## check that no aggregation columns contains the separator
  reg <- paste0("[", config@sep, "]")
  if( any( grepl( reg, eds@ds[, config@columns] ))) {
    stop("The aggregation columns contains the separator used to build columns names. ")
  }
  
  ## build row.names from aggregations components
  eds@ds <- utils_build_rownames( eds@ds, config@columns, TRUE, config@sep)
  
  eds
} 