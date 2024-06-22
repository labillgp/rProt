## previously ttest_groups
tstat_ttest_genotypes <- function(eds, ds, g1, g2) {
  apply(ds, 1, function(x) tstat_ttest_genotypes_vectors(x, eds, g1, g2))
}