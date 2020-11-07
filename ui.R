#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#


library(shiny)

shinyUI(
    navbarPage("Shiny App",
               tabPanel("Analysis",
                        fluidPage(
                            titlePanel(" variables Vs miles per gallon (MPG)"),
                            sidebarLayout(
                                sidebarPanel(
                                    selectInput("variable", "Variable:",
                                                c("Number of cylinders" = "cyl",
                                                  "Displacement (cu.in.)" = "disp",
                                                  "Gross horsepower" = "hp",
                                                  "Rear axle ratio" = "drat",
                                                  "Weight (lb/1000)" = "wt",
                                                  "1/4 mile time" = "qsec",
                                                  "V/S" = "vs",
                                                  "Transmission" = "am",
                                                  "Number of forward gears" = "gear",
                                                  "Number of carburetors" = "carb"
                                                )),
                                    
                                    checkboxInput("outliers", "Show Boxplot's outliers", FALSE)
                                ),
                                
                                mainPanel(
                                    h3(textOutput("caption")),
                                    
                                    tabsetPanel(type = "tabs", 
                                                tabPanel("BoxPlot", plotOutput("mpgBoxPlot")),
                                                tabPanel("Regression model", 
                                                         plotOutput("mpgPlot"),
                                                         verbatimTextOutput("fit")
                                                )
                                    )
                                )
                            )
                        )
               ),
               tabPanel("Check the Source Code",
                        h2("All the Source code can be find in courera"),
                        hr(),
                        h3("Here :Regression Models Course Project"),
                        helpText("You workbile industry Loo king at a data set of a collection of cars, they are interested in exploring the relationship",
                                 ". They are particularly interested in the following two questions: Is an automatic or manual transmission better for MPG. Quantify the MPG difference between automatic and manual transmissions"),
                        h3("Important"),
                        p("A data frame with 32 observations on 11 variables."),
                        
               ),
               tabPanel("More Data Detail",
                        h2("Motor Trend Car Road Tests"),
                        hr(),
                        h3("Description"),
                        helpText("The data that is used was taken from the Motor Trend US magazine 1974,",
                                 " x."),
                        h3("Format"),
                        p("A data frame with 32 observations on 11 variables."),
                        
                        p("  [, 1]   mpg         Miles/(US) gallon"),
                        p("  [, 2]	 cyl	 Number of cylinders"),
                        p("  [, 3]	 disp	 Displacement (cu.in.)"),
                        p("  [, 4]	 hp	 Gross horsepower"),
                        p("  [, 5]	 drat	 Rear axle ratio"),
                        p("  [, 6]	 wt	 Weight (lb/1000)"),
                        p("  [, 7]	 qsec	 1/4 mile time"),
                        p("  [, 8]	 vs	 V/S"),
                        p("  [, 9]	 am	 Transmission (0 = automatic, 1 = manual)"),
                        p("  [,10]	 gear	 Number of forward gears"),
                        p("  [,11]	 carb	 Number of carburetors"),
                        
                        h3("Source"),
                        
                        p("Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391-411.")
               ),
               tabPanel("Go back to the Github repository",
                        a("https://github.com/pooh2399/DDPWeek4"),
                        hr(),
                        h2("The name of the repository is Developing-Data-Products")
               )
    )
)