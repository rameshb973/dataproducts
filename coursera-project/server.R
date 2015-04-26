
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

bmi <- function(ht,htin,wt) (wt/((ht*12)+htin)^2)*703

shinyServer(function(input, output) {

 output$oid1 <- renderPrint({bmi(input$ht,input$htin, input$wt)})
 
 #output$oid2 <- renderPrint(if $oid1 > 25 then ) 
 
 #output$oid1 <- renderPrint({input$wt})
  
  })
