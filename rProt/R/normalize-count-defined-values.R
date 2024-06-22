normalize_count_defined_values <- function(v, eds) {
  ## Count the missing values based on groups and repeats definitions
  by(v, eds@runs[!eds@runs_excluded],function(x) sum(!is.na(x)))
}
