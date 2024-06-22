#' @include ClassWorkflowConfig.R
#' @include ClassWorkflowResult.R
setClass("ExperimentDataset", 
         slots = c(
             ds="data.frame",
             filename="character",
             annotations="character",        ## List of columns that are not intensities
             genotypes="character",          ## List of available genotypes in ds
             runs ="character",              ## Ordered list of vectors of data (column names)
             runs_excluded="logical",        ## Ordered list of boolean marking exclusion
             runs_genotype="character",      ## Oredered list of genotypes per run
             runs_per_genotypes="list",      ## List of runs with genotype as key
             tag="character",
             config="WorkflowConfig",
             result="WorkflowResult"
             )
         )


validate_experiment_dataset <- function(object) {
  
  if ( length(object@annotations) == 0 ) {
    stop("Please specify which columns are annoations.")
  }
  
  if (any(! object@annotations %in% colnames(object@ds) )) {
    stop("Annotations must be columns")
  }
  
  if ( length(object@tag) == 0 ) {
    stop("Tag is not defined. This is suspicious")
  }
  
  TRUE
}

setValidity("ExperimentDataset", validate_experiment_dataset)

if(FALSE) {
  eds = new("ExperimentDataset")
  validObject(eds) # FALSE
  eds@annotations <- c("Gene")
  validObject(eds) # FALSE
  
  data <- c(1:10)
  dim(data) <- c(2, 5)
  colnames(data) <- c('accession', 'g1.r1', 'g1.r2', 'g2.r1', 'g2.r2' )
  eds@ds <- as.data.frame(data)
  validObject(eds) # FALSE
  
  eds <- eds_load("./data/xCT technical replicates reformatted.rds")
  eds@filename
  eds@genotypes
  head(eds@ds)
  validObject(eds) # TRUE
  
  eds <- eds_select_genotypes(eds, c("WTM", "WTF"))
  eds@genotypes
  eds@annotations
  eds@runs_genotype
  eds@runs
  eds@runs_excluded
  eds@runs_per_genotypes
  colnames(eds@ds)
  head(eds@ds)
  eds@tag
  validObject(eds) # TRUE
}

