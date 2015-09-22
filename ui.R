
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(pageWithSidebar(

  # Application title
  headerPanel("BMI Calculator"),

  sidebarPanel(
    numericInput("Weight", 
                 label = h3("Weight (kg)"),
                 value = 0),
    numericInput("Height", 
                 label = h3("Height (m)"),
                 value = 0),
    submitButton("Calculate BMI"),
    helpText ("BMI - Body Mass Index: is computed based on the formula of Weight(kg) / (height(m) * height(m)")
  ),    

    # Show the results
    mainPanel(
      h3('Results of BMI calcuation'),
      h4('You entered'),
      verbatimTextOutput("inputValueWeight"),
      verbatimTextOutput("inputValueHeight"),
      h4('Which resulted in a BMI of '),
      verbatimTextOutput("prediction"), 
      h5('Note: The calculator can only compute BMI when both weight and height values are non-zero.')
    )
  )
)


