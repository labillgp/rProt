main <- function(eds, signatures, process_tag) {
  
  validObject(eds)
  
  eds_ref             <- eds
  
  for( signature in signatures ) {
    
    print(paste0("Processing: ", paste0(signature@selected_genotypes, collapse="_") ))
    
    eds                           <- eds_ref
    eds@config@signature          <- signature
    eds                           <- eds_select_genotypes(eds, eds@config@signature@selected_genotypes)
    eds                           <- workflow_default(eds)
    
    core_tag <- paste0( c( eds@tag, process_tag, eds@config@nmf@nrun) , collapse = "_" )
    saveRDS(object = eds, file = paste0(param.outdir, core_tag, ".rds"))
    
  }
  
}
