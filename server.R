
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

# takes the input values of weight and height and displays on the results panel
output$inputValueWeight <- renderPrint(paste("Weight(kg) : ", input$Weight))
output$inputValueHeight <- renderPrint(paste("Height(m) : ", input$Height))
  
# takes the input values of weight and height and performs the BMI computation  
# displays computed BMI on the results panel
output$prediction <- renderPrint({
 
      if ((input$Weight > 0) & (input$Height > 0))
      {  
      bmi = input$Weight / (input$Height * input$Height)
      
      bmi
      }
    })
 }    
)
