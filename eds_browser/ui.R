#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(DT)

ui <- fluidPage(
  title = "Examples of DataTables",
  
  fluidRow(
    tabsetPanel(
      id = 'dataset',
      tabPanel("sig_tstat", DT::dataTableOutput("sig_tstat")),
      tabPanel("sig_nmf", DT::dataTableOutput("sig_nmf")),
      tabPanel("sig_consensus", DT::dataTableOutput("sig_consensus"))
    )
  )
)