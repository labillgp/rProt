setClass("GraphConfig",
         slots = c(
             hline="numeric"                             ## y value of horizontal line in graphs
             )
         )


if(FALSE) {
  c = new("GraphConfig")
  validObject(c)
}
