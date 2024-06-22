regions4_config_signatures <- function() {
  signatures <- list()

  ## all
  config = new("SignatureConfig")
  config@selected_genotypes <- 'all'
  config@tstat_signatures[[1]] <- list( g1=c('ACC'),   g2=NA)
  config@tstat_signatures[[2]] <- list( g1=c('DLPFC'),   g2=NA)
  config@tstat_signatures[[3]] <- list( g1=c('HIPP'),   g2=NA)
  config@tstat_signatures[[4]] <- list( g1=c('STG'),   g2=NA)


  config@nmf_signatures[[1]] <- list( genotypes="ACC",   cluster_name="nmf5",   w_index=3)
  config@nmf_signatures[[2]] <- list( genotypes="DLPFC",   cluster_name="nmf5",   w_index=4)

  # config@nmf_signatures[[3]] <- list( genotypes="HIPP",   cluster_name="nmf6",   w_index=1)     # Dataset used for initial submission (DSi), use HIPP:nmf6-1

  # obsolete config@nmf_signatures[[3]] <- list( genotypes="HIPP",   cluster_name="nmf5",   w_index=3)   # DSi+DLG4-normalizing peptide, use HIPP:nmf5-3

  # config@nmf_signatures[[3]] <- list( genotypes="HIPP",   cluster_name="nmf5",   w_index=5)   # DSi-DLG4 modified peptide, use HIPP:nmf5-5

  config@nmf_signatures[[3]] <- list( genotypes="HIPP",   cluster_name="nmf4",   w_index=4)   # DSi-DLG4 modified peptide, use HIPP:nmf5-4 for proteins

  config@nmf_signatures[[4]] <- list( genotypes="STG",   cluster_name="nmf5",   w_index=5)

  #config@nmf_signatures[[5]] <- list( genotypes="HIPPalt",   cluster_name="nmf5",   w_index=4)     # Dataset used for initial submission (DSi), use HIPP:nmf6-1

  # # 2 biological replicates - obsolete
  # config@nmf_signatures[[1]] <- list( genotypes="ACC",   cluster_name="nmf5",   w_index=3)
  # config@nmf_signatures[[2]] <- list( genotypes="DLPFC",   cluster_name="nmf5",   w_index=4)
  # config@nmf_signatures[[3]] <- list( genotypes="HIPP",   cluster_name="nmf5",   w_index=2)
  # config@nmf_signatures[[4]] <- list( genotypes="STG",   cluster_name="nmf5",   w_index=5)

  config@consensus_signatures[[1]] <- list( tstat=1,          nmf=1 )
  config@consensus_signatures[[2]] <- list( tstat=2,          nmf=2 )
  config@consensus_signatures[[3]] <- list( tstat=3,          nmf=3 )
  config@consensus_signatures[[4]] <- list( tstat=4,          nmf=4 )

  #config@consensus_signatures[[5]] <- list( tstat=3,          nmf=5 )  # Hipp alt consensus

  signatures[[ 'all' ]] <- config

  signatures
}
