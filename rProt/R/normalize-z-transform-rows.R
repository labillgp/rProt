normalize_z_transform_rows <- function(ds) {
  t(scale(t(ds), center = TRUE, scale = TRUE))
}
