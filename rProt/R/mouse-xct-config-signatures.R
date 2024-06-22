mouse_xct_config_signatures <- function() {
  signatures <- list()
  
  ## all
  config = new("SignatureConfig")
  config@selected_genotypes <- 'all'
  config@tstat_signatures[[1]] <- list( g1=c('WTM'),   g2=NA)
  config@tstat_signatures[[2]] <- list( g1=c('KOM'),   g2=NA)
  config@tstat_signatures[[3]] <- list( g1=c('WTF'),   g2=NA)
  config@tstat_signatures[[4]] <- list( g1=c('KOF'),   g2=NA)
  
  config@nmf_signatures[[1]] <- list( genotypes="WTM",   cluster_name="nmf4",   w_index=4)
  config@nmf_signatures[[2]] <- list( genotypes="KOM",   cluster_name="nmf4",   w_index=1)
  config@nmf_signatures[[3]] <- list( genotypes="WTF",   cluster_name="nmf4",   w_index=3)
  config@nmf_signatures[[4]] <- list( genotypes="KOF",   cluster_name="nmf4",   w_index=2)
  
  config@consensus_signatures[[1]] <- list( tstat=1,          nmf=1 )
  config@consensus_signatures[[2]] <- list( tstat=2,          nmf=2 )
  config@consensus_signatures[[3]] <- list( tstat=3,          nmf=3 )
  config@consensus_signatures[[4]] <- list( tstat=4,          nmf=4 )
  
  signatures[[ 'all' ]] <- config
  
 
  ## males
  config = new("SignatureConfig")
  config@selected_genotypes <- c('WTM', 'KOM')
  
  config@tstat_signatures[[1]] <- list( g1=c('WTM'),   g2=NA)
  config@tstat_signatures[[2]] <- list( g1=c('KOM'),   g2=NA)
  
  config@nmf_signatures[[1]] <- list( genotypes="WTM",   cluster_name="nmf2",   w_index=1)
  config@nmf_signatures[[2]] <- list( genotypes="KOM",   cluster_name="nmf2",   w_index=2)

  config@consensus_signatures[[1]] <- list( tstat=1,          nmf=1 )
  config@consensus_signatures[[2]] <- list( tstat=2,          nmf=2 )
  
  signatures[[ 'males' ]] <- config
  
  
  ## Females
  config = new("SignatureConfig")
  config@selected_genotypes <- c('WTF', 'KOF')
  
  config@tstat_signatures[[1]] <- list( g1=c('WTF'),   g2=NA)
  config@tstat_signatures[[2]] <- list( g1=c('KOF'),   g2=NA)
  
  config@nmf_signatures[[1]] <- list( genotypes="KOF",   cluster_name="nmf2",   w_index=1)

  config@consensus_signatures[[1]] <- list( tstat=2,          nmf=1 )
  
  signatures[[ 'females' ]] <- config
  
  signatures
}
