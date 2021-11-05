library(shiny)
library(plotly)
library(ggplot2)

df <- iris
# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    Sepal.Length2 <- df$Sepal.Length

    output$dist <- renderPlotly({
        p <- ggplot(data = df, aes_string(y= input$variable,x = Sepal.Length2)) +
            geom_point(aes(colour = factor(Species))) +
            labs(colour = "Species") +  xlab("Sepal.Length")
        ggplotly(p)
    })
    output$title <- renderText({
        paste0("What's the app do?")
    })
    output$description <- renderText({
        paste0("The app shows the iris data variables distribution (Sepal.Width,Petal.Length,Petal.Width) versus the variable Petal.Length, and colored by the variable Species.You can browse the app to get more detailed information about the variables distribution versus Sepal.Length. ")
    })
    output$title2 <- renderText({
        paste0("How to use this app?")
    })
    output$description2 <- renderText({
        paste0("You can change two things in this app to get different outputs, the first is that you can change the variable in the Y-axis to see, to see the distribution between this variable and Petal Length. And the second thing you can change is Species shown in the distribution. You can hide any species by clicking on it in the legend, and you can isolate any species by double-clicking on it.")
    })

})
