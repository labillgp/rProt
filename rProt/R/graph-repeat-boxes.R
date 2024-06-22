graph_repeat_boxes <- function(ds,
         title_ds,
         ref_line_h) {

  averages <- apply(ds, 2, function(x) mean(x, na.rm = TRUE))
  medians <- apply(ds, 2, function(x) median(x, na.rm = TRUE))

  print(head(ds))
  boxplot2(ds)
  title(title_ds)
  abline(h=ref_line_h, lty=3)
  points(averages, col = "red", pch = 22, lwd = 2, type = "b")
}
