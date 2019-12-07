#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(dplyr)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    selectedData <- reactive({
        data = read.csv("datatest.csv", stringsAsFactors = FALSE)
        
        #iris[, c(input$xcol, input$ycol)]
    })
    output$distPlot <- renderPlot({
        d = data[[input$val]]
        hist(as.numeric(d), col = c("Red"))
        # data %>% select(Temperature) %>% nth(1) %>% hist
        

    })

})
