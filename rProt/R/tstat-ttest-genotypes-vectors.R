## previously TValue3_groups
## ## Previsouly TValue3 replaced by ttest_genotypes(x, eds, g1, None)
tstat_ttest_genotypes_vectors <- function(x, eds, g1, g2=NA) {
  g_ <- eds@runs_genotype[ ! eds@runs_excluded]
  v1 <- x[ g_ %in% g1 ]
  v2 <- x[ g_ %in% g2 ]

  tstat_ttest_vectors(v1, v2)
}