eds_select_genotypes <- function(eds, selected_genotypes) {
  if( all(is.na(selected_genotypes)) | any(selected_genotypes=='all')) {
    return(eds)
  }
  
  seld <- selected_genotypes
  eds@runs_per_genotypes <- eds@runs_per_genotypes[ names(eds@runs_per_genotypes) %in% seld]
  eds@genotypes <- eds@genotypes[ eds@genotypes %in% seld ]
  
  selr <- eds@runs_genotype %in% seld
  eds@runs_genotype <- eds@runs_genotype[ selr ]
  eds@runs_excluded <- eds@runs_excluded[ selr ]
  eds@runs <- eds@runs[ selr ]
  
  eds@ds <- eds@ds[ colnames(eds@ds) %in% c(eds@annotations, eds@runs) ]
  
  eds@tag <- eds_tag(eds)

  eds
}