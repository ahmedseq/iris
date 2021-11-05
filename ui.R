library(shiny)
library(plotly)


# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("IRIS Data"),

    # Sidebar with a slider input for number of bins
    selectInput(inputId = "variable", "Variable:",
                choices = c("Sepal.Width" = "Sepal.Width",
                  "Petal.Length" = "Petal.Length",
                  "Petal.Width" = "Petal.Width")),

        # Show a plot of the generated distribution
        mainPanel(
            h3(textOutput("title")),
            h5(textOutput("description")),
            h3(textOutput("title2")),
            h5(textOutput("description2")),
            plotlyOutput("dist")
        )
    )
)
