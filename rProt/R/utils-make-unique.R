utils_make_unique <- function(ds) {
  ds.complete <- as.data.frame(ds)
  ds.unique <- ds.complete[ !duplicated(rownames(ds.complete)), ]
  ds.unique
}
