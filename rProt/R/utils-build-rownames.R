utils_build_rownames <- function( ds, annotations, allow_duplicates, sep ) {
  
  row_names <- apply( ds[ , annotations, drop = FALSE], 1, paste, collapse = sep)
  
  if( !allow_duplicates & any(duplicated(row_names) ) ) {
    stop("build_rownames: There are duplicates rownames based on annotations and duplicates where not allowed.")
  }
      
  ## Make unique should be applied with the seperator used to build rownames 
  ## to avoid altering the last component in case of duplicate
  rownames(ds) <- make.unique(row_names, sep = sep)
  
  ds
}