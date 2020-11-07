#project of PV Vineet , DDDP week 4 shiny app devolpment
library(shiny)


# ui is created to make the histogram in server and work with server.r and make the app
shinyUI(fluidPage(
  
  # the title panel code is given below to add the title of app observed in tab coloumn 
  titlePanel("MTCars Data - Reg analysis of multiple dimensions of the Dataset"),
  
  # side bar for MPG value 
  sidebarLayout(
    sidebarPanel(
      
      selectInput("variable2", "Select 1st var:",
                  choices = c("Miles per Gallon" = "mpg",
                              "Horse Power" = "hp"),
                  selected = "hp"),
      
      selectInput("variable1", "Select 2nd var:",
                  choices = c("Cylinders" = "cyl",
                              "Transmission" = "am",
                              "Gears" = "gear"),
                  selected = "am"),
      
      checkboxInput("Abline", "Draw Albine Line", TRUE)
      
      
    ),
    
    # Plot of distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
