normalize_xct <- function(eds) {
  
  ds <- eds@ds
  config <- eds@config@normalize
  hline <- eds@config@graph@hline
  
  step <- "Separate description from values"
  desc_idx <- 1:(length(eds@annotations))
  ds.descr <- ds[ , desc_idx]
  ds.vals <- as.matrix(ds[ , -desc_idx])

  
  step <- "Map 0s to NAs"
  ds.vals <- normalize_set_missing_values(ds.vals, 0)
  print(step)
  utils_print_missing_values(ds.vals, eds )
  graph_repeat_boxes(ds.vals, step, hline)
  
  step <- "Peptide normalization"
  ds.pep_norm <- normalize_peptide_normalize(ds.vals, config@normative_peptide_pattern)
  print(step)
  
  step <- "Log2 transform"
  ds.log2 <- log2(ds.pep_norm)   ## carefule
  print(step)
  utils_print_missing_values(ds.log2, eds)
  graph_repeat_boxes(ds.log2, step, hline)
  

  step <- "Enforce number of replicates"
  ds.enforced <- normalize_enforce_nb_replicates(ds.log2, eds, config)
  print(step)
  utils_print_missing_values(ds.enforced, eds)
  graph_repeat_boxes(ds.enforced, step, hline)

  
  step <- "Columns quantile normalization"
  ds.quant <- normalize_quantile_normalize_columns(ds.enforced)
  print(step)
  utils_print_missing_values(ds.quant, eds)
  graph_repeat_boxes(ds.quant, step, hline)
  
  
  step <- "Imputing value to NAs"
  ds.quant.mean.save <- apply(ds.quant, 1, mean, na.rm=TRUE) # for check purpose
  ds.complete <- normalize_impute_missing_values(ds.quant, eds)
  print(step)
  utils_print_missing_values(ds.complete, eds)
  graph_repeat_boxes(ds.complete, step, hline)
  stopifnot(all(complete.cases(ds.complete)))
  
  
  step <- "Most variable peptides"
  ds.variable <- normalize_most_variable_peptides(ds.complete, config)
  graph_repeat_boxes(ds.variable, step, hline)
  
  
  step <- "z-transform rows normalization"
  ds.scaled <- normalize_z_transform_rows(ds.variable)
  graph_repeat_boxes(ds.scaled, step, hline)
  graph_peptide_boxes(ds.scaled, step, hline)
  
  
  ## Assign the results
  eds@result@ds_normalized <- as.data.frame(ds.scaled)
  
  eds

}

