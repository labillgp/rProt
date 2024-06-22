## A class representing the configuration for unsupervized cluster

#' @include ClassNormalizeConfig.R
#' @include ClassAggregateConfig.R
#' @include ClassSignatureConfig.R
#' @include ClassNmfConfig.R
#' @include ClassConsensusConfig.R
#' @include ClassGraphConfig.R
setClass("WorkflowConfig", 
         slots = c(
             normalize="NormalizeConfig",
             aggregate="AggregateConfig",
             nmf="NmfConfig",
             signature="SignatureConfig",
             consensus="ConsensusConfig",
             graph="GraphConfig"
             )
         )


if(FALSE) {
  c = new("WorkflowConfig")
  validObject(c)
}
