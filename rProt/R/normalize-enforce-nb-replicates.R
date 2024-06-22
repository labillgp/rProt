normalize_enforce_nb_replicates <- function(ds, eds, config) {
  if( !is.na(config@min_data_per_replicate)) {
    ## Count missing repeats per biological replicates
    mr <- apply(ds, 1, function(x) normalize_count_defined_values(x, eds))

    ## Get the min number of defined values per peptide (columns after using by)
    m <- apply(mr, 2, min)

    ## Get the filtered dataset
    ds <- ds[ names( m[ m >= config@min_data_per_replicate]), ]
  }

  if( !is.na(config@max_missing_values_per_replicate)) {
    ## Count missing replicates per biological replicates
    mr <- apply(ds, 1, function(x) normalize_count_missing_values(x, eds))

    ## Get the max number of missing values per peptide (columns after using by)
    m <- apply(mr, 2, max)

    ## Get the filtered dataset
    ds <- ds[ names( m[ m <= config@max_missing_values_per_replicate]), ]
  }

  ds
}
