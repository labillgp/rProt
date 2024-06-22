graph_plot_heatmap_mouse <- function(ds, filetag, titletag="observations",nofile=FALSE, ...) {
  ds <- utils_make_unique(ds)
  label.nbrow <- nrow(ds)
  
  pic_filename <- utils_get_filename(".PNG", filetag)
  print(pic_filename)
  png(pic_filename, width= 4, height= 14, units= "in", res= 1200, pointsize= 4)
  samples.dend <- graph_myheatplot(ds,
                             main=paste('Clustering - ', 
                                        label.nbrow, titletag), 
                             lhei = c(0.03,0.97),
                             margins = c(5, 20),
                             returnSampleTree=TRUE,
                             ...
  )
  dev.off() 
  
  png(utils_get_filename("_dend.PNG", filetag), width= 4, height= 2, units= "in", res= 1200, pointsize= 4)
  plot(samples.dend)
  if(!exists("distfun"))
    name_fun <- "Pearson"
  else
    name_fun <- distfun
  
  title(paste('Dendrogram (', name_fun, ')', 
              label.nbrow, titletag))
  dev.off()
  samples.dend
}
