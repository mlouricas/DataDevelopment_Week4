library(shiny)
library(RCurl)
library(caret)

data(mtcars)
modFit <- train(mpg ~ cyl + hp + wt + am, method="glm", data=mtcars)
shinyServer(
        function(input, output) { 
                #pred = predict(modFit, data)
                #output$prediction <- renderPrint ({as.string(pred)})
                output$prediction <- renderPrint ({
                        cyl = input$cyl
                        hp = input$hp
                        wt = input$wt
                        am = input$am
                        predict(modFit,data.frame(cyl, hp, wt, am))})
        }
)