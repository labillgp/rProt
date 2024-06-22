normalize_z_transform_cols <- function(ds) {
  scale(ds, center = TRUE, scale = TRUE)
}
