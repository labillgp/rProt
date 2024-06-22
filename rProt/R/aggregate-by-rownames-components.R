# With rownames like Component1|Component2|Component3
# Will aggregate values against the 1-based component
aggregate_by_rownames_components <- function(ds, component_1idx, agg_function, sep) {
  ids <- rownames(ds)
  components <- unlist(lapply(ids, function(x) {paste(strsplit(x, sep, fixed = TRUE)[[1]][component_1idx], collapse = sep)  }))
  ds <- ds[ order(components), ]
  components <- components[ order(components)]
  ds.agg <- aggregate(ds, list(components), agg_function)
  rownames(ds.agg) <- ds.agg$Group.1
  ds.agg <- subset(ds.agg, select = c(-Group.1))
  ds.agg
}
