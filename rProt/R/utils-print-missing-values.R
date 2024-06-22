utils_print_missing_values <- function(ds, eds) {
  ## Print missing values per groups
  for( g in eds@genotypes) {
    gs <- eds@runs_genotype[!eds@runs_excluded]
    print(paste0(g, " missing values:"))
    ##print(paste0(sum(is.na(ds[ , gs == g])), " / ", length(ds[ , gs == g])))
  }
}
