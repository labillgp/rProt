setClass("SignatureConfig", 
         slots = c(
           selected_genotypes="character",
           tstat_signatures="list",
           nmf_signatures="list",
           consensus_signatures="list"
         )
)


if( FALSE ) {
  c = new("SignatureConfig")
  validObject(c)
}
