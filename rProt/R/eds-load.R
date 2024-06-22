eds_load <- function(filerds) {
  eds <- readRDS(filerds)
  eds@filename=filerds
  eds
}