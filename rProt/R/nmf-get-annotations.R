# nmf_get_annotations <- function(eds) {
#   annot1 <- eds@runs_genotype[! eds@runs_excluded ]
#   annot2 <- eds@runs[! eds@runs_excluded ]
#   annot <- as.data.frame(cbind(annot1, annot2))
#   colnames(annot) <- c('Group', 'Sample')
#   annot
# }

nmf_get_annotations <- function(eds) {
  annot1 <- eds@runs_genotype[! eds@runs_excluded ]
  annot <- as.data.frame(annot1)
  colnames(annot) <- c('Group')
  annot
}
