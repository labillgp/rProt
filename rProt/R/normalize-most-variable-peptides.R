normalize_most_variable_peptides <- function(ds, config ) {

  tmp.sd <- apply(ds, c(1), sd)
  tmp.mean <- apply(ds, c(1), mean)
  tmp.coefvar <- tmp.sd / tmp.mean
  
  plot(sort(abs(tmp.coefvar), decreasing=TRUE))
  title("Variation coefficient of peptides (sorted)")

  ## Filter peptides having coef of variation <= threshold
  tmp.coefvarth <- sort(abs(tmp.coefvar), decreasing=TRUE)[min(length(tmp.coefvar), config@nb_top_peptides)]
  tmp.filtered <- abs(tmp.coefvar) >= tmp.coefvarth
  
  print(paste("number of peptide removed:", sum(!tmp.filtered)))
  ds[ tmp.filtered,]
  
}
