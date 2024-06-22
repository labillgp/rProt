
signatures <- list()

## all
config = new("SignatureConfig")
config@selected_genotypes <- 'all'
config@tstat_signatures[[1]] <- list( g1=c('ACC'),   g2=NA)
config@tstat_signatures[[2]] <- list( g1=c('DLPFC'),   g2=NA)

config@nmf_signatures[[1]] <- list( genotypes="ACC",   cluster_name="nmf6",   w_index=1)
config@nmf_signatures[[2]] <- list( genotypes="DLPFC",   cluster_name="nmf6",   w_index=4)

config@consensus_signatures[[1]] <- list( tstat=1,          nmf=1 )
config@consensus_signatures[[2]] <- list( tstat=2,          nmf=2 )

signatures[[ 'all' ]] <- config

rm(config)
