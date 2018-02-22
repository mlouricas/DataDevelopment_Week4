
library(shiny)
library(caret)
# Adds support for graphical tooltips and popovers, in order to enrich de UI.
library(shinyBS) 
# Adds Bootstrap themes to a Shiny app.
library(shinythemes)

shinyUI(
        
        navbarPage(
                
                "Predict Your Vehicle's MPG",
                
                theme = shinytheme("flatly"),
                
                tabPanel(
                        
                        "Prediction",
                        
                sidebarPanel (
                        numericInput('cyl', 'Cylinders', 4, min = 4, max= 8, step = 2),
                        
                        numericInput('hp', 'Horsepower', 100, min = 50, max= 500, step = 50),
                        numericInput('wt', 'Weight (in 1000s lbs)', 3, min = 0, max= 8, step = .5),
                        numericInput('am', 'Transmission (0-Auto,1-Manual)', 0, min = 0, max= 1, step = 1),
                        submitButton('Submit')
                ),
                mainPanel (
                        width = 8,
                        h3 ('Results of prediction'),
                        br(),
                        h4 ('Your Vehicle\'s Predicted MPG: (The number 1 in front of the prediction does not mean anything'),
                        textOutput("prediction")
                )
        ),

tabPanel(
        
        "Help",
        
        p("A Miles per Gallon prediction is generated and trained for a specific dataset of cars (see below)."),
        
        p("By selecting numeric inputs and hitting the submit button, the User can estimate the MPG of a car with certain characteristics ."),
        
        p("Dataset used by the application is the ",
          a(href = "https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/mtcars.html", "Motor Trend Car Road Tests"),
          "The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models)."
        ),
        
        tags$div("Next is the dataset structure:",
                 tags$ul(
                         tags$li(strong("mpg"), "Miles/(US) gallon"),
                         tags$li(strong("cyl"), "Number of cylinders"),
                         tags$li(strong("hp"), "Gross horsepower"),
                         tags$li(strong("wt"), "Weight (1000 lbs)"),
                         tags$li(strong("am"), "Transmission (0 = automatic, 1 = manual)"))
                 )
        
),

tabPanel(
        
        "About",
        
        h3("Developing Data Products course - Assignment Week 4 - Shiny Application and Reproducible Pitch"),
        
        h3("Author: MJL - February 21, 2018"),
        
        br(),
        
        p("Source code of this application is available at",
          a(href = "https://",
            "https://github.com/")
        )
        
)))