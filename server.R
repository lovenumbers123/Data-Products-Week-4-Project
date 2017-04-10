#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
server <- function(input, output) {
  output$plot1 <- renderPlot({
    plot(mtcars$cyl, mtcars$qsec)
    title(main = list("Quarter Mile Speed", cex = 1.5,
                      col = "red", font = 3))
    
  })
  
  output$info <- renderText({
    paste("Cylinders=", input$plot_click$x, "\nQuarter Mile Seconds=", input$plot_click$y)
  })
}

