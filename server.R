library(shiny)

# Definiing server theroy which is required to drawhistogram with out thisi it makes it difficult to dev a shinyapp
library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    output$distPlot <- renderPlot({
        
        #CYL based on input value of MPG is taken anf then build histogram of it so as to get fixed AB line out of it
   
        
        mtcars.cyl.formula <- mtcars[,input$variable1] ~ mtcars[,input$variable2]
        mtcars.cyl.lm <- lm(formula=mtcars.cyl.formula, data=mtcars)
        
        
        # scatter plot is built for further analysis and imference
        plot(mtcars.cyl.formula, data=mtcars, xlab = input$variable1, ylab = input$variable2)
        if (input$Abline){abline(mtcars.cyl.lm,col="Red")}
        
    })
    
})

