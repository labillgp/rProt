#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

# https://shiny.rstudio.com/articles/datatables.html
# https://gist.github.com/wch/4211337

library(shiny)

eds <- readRDS("../experiments/human_scz_2018-05-03/CTL_SCZ_default_200.rds")
PAGE_LENGTH <- 15

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  # choose columns to display
  output$sig_tstat <- DT::renderDataTable({
    DT::datatable(data.frame(tstat_get_signature(eds, 'SCZ_vs_CTL')), 
                  options = list(pageLength = PAGE_LENGTH))
  })
  
  # sorted columns are colored now because CSS are attached to them
  output$sig_nmf <- DT::renderDataTable({
    DT::datatable(data.frame(nmf_get_signature(eds, 'SCZ')),
                  options = list(pageLength = PAGE_LENGTH))
  })
  
  # customize the length drop-down menu; display 5 rows per page by default
  output$sig_consensus <- DT::renderDataTable({
    DT::datatable(data.frame(consensus_get_signature(eds, "tstat:SCZ_vs_CTL|nmf:CTL")),
                  options = list(pageLength = PAGE_LENGTH))
  })
})
