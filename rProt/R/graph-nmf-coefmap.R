graph_nmf_coefmaps <- function(eds) {
  for( cluster_name in names(eds@result@nmf_cluster) ) {
    nmf_clust <- eds@result@nmf_cluster[[cluster_name]]
    coefmap(nmf_clust, annCol=get(eds@config@nmf@get_annotations_function_name)(eds) )
  }
}