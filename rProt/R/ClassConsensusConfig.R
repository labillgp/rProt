setClass("ConsensusConfig", 
         slots = c(
           function_name="character",
           top_number="integer"
         )
)


if( FALSE ) {
  c = new("ConsensusConfig")
  validObject(c)
}