normalize_peptide_normalize <- function(ds, peptides, exclude_normalizing_peptides=F) {
  
  print("peptides")
  print(peptides)
  print(head(ds))
  
  ## Check if normalization if requested
  if( nchar(peptides) == 0)
    return(ds)
  
  ## Select normalization peptides
  normalize_coef <- ds[ grepl(x=rownames(ds), pattern=peptides), , drop = FALSE]
  
  print("Normalization coefficients")
  print(normalize_coef)
  
  stopifnot( ! is.na(normalize_coef ) )
  stopifnot( dim(normalize_coef)[1] > 0) ## "Normalization peptides should be found in dataset"
  
  ## Remove peptides used for normalization
  ds <- ds[ !rownames(ds) %in% rownames(normalize_coef), ]
  
  ## Remove DLG4 
  ds <- ds[ !grepl(x=rownames(ds), pattern='P78352'), , drop = FALSE]
  ds <- ds[ !grepl(x=rownames(ds), pattern='DLG4'), , drop = FALSE]
  
  ## Geom mean if necessary
  if (nrow(normalize_coef) > 1 ) {
    normalize_coef <- sapply(normalize_coef, function(x) utils_geom_mean(x, na.rm = T))
  } else {
    normalize_coef <- as.vector(as.matrix(normalize_coef))  ## must be numeric
  }
  
  ## Normalize
  ds <- t(t(ds) / normalize_coef)
  
  ds
}
