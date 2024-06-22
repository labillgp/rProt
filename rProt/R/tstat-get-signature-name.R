tstat_get_signature_name <- function(eds, g1, g2) {
  
  label1 = paste(g1, collapse = "_")
  label2 = paste(g2, collapse = "_")
  label = paste0(label1, "_vs_", label2)
  
  paste0(label)
}
