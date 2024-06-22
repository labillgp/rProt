graph_peptide_boxes <- function(ds, 
         title_ds,
         ref_line_h
) {
  
  ds <- t(ds)
  graph_repeat_boxes(ds, title_ds, ref_line_h)
}