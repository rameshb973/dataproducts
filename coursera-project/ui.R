
# This is the user-interface definition of a Shiny web application for calculating BMI.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Calculate your BMI"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      # weight input
      sliderInput("wt", "Set your Weight in lbs", 
                  min = 0, max = 500, value = 0),
      sliderInput("ht", "Set your height - feet", 
                  min = 0, max = 8, value = 5),
      sliderInput("htin", "Set your height - inches", 
                  min = 0, max = 11, value = 5)
      
      
      #numericInput('wt', 'Enter your Weight in lbs', 0, min = 0, max = 500),
      #numericInput('ht', 'Enter your height in inches', 0, min = 0, max = 500)
      
    ),

    # Show a plot of the generated distribution
    mainPanel(
      h3('Your BMI is '),
      verbatimTextOutput("oid1"),
      h5("1. BMI below 18.5 is underweight"),
      h5("2. BMI between 18.5 to 24.9 is healthy and normal"),
      h5("3. BMI between 25 and 29.9 is overweight"),
      h5("4. BMI equal to 30 and above is obese ")
      
    )
  )
))
