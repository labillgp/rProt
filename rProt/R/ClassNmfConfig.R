setClass("NmfConfig", 
         slots = c(
           get_annotations_function_name="character",
           get_offset_function_name="character",
           seed="integer",
           nrun="integer",
           nmf_algorithm="NMFStrategyIterative",
           get_weights_function_name="character",
           get_k_range_function_name="character"
         )
)


if( FALSE ) {
  c = new("NmfConfig")
  validObject(c)
}