setClass("WorkflowResult", 
         slots = c(
           ds_normalized="data.frame",
           ds_aggregated="data.frame",
           tstat_signature="list",
           nmf_cluster="list",
           nmf_signature="list",
           consensus_signature="list"
         )
)


if( FALSE ) {
  r = new("WorkflowResult")
  validObject(r)
}
