library(shiny)
mpg <- mtcars$mpg
wt  <- mtcars$wt
qsec<- mtcars$qsec
fit <- lm(mpg~factor(am)+wt+hp+cyl+disp+drat+qsec+carb+vs,data=mtcars)
sfit <- step(fit,trace=0)

drawPlots <- function(x) {
  par(mfrow=c(1,2))
  plot(mpg~wt,pch=19, xlab="Car weight (1000lbs)", col="darkblue",
       main="MPG versus Car Weight")
  lmowt <- lm(mpg~wt)
  abline(lmowt,col="darkred",lwd=2)
  points(x[1], jitter(x[3]), col="darkblue", pch=17, cex=2)
  
  plot(mpg~qsec,pch=19, xlab="Quarter Mile Second", col="darkblue",
       main="MPG versus Quarter Miles Second")
  lmoqsec <- lm(mpg~qsec)
  abline(lmoqsec,col="darkred",lwd=2)
  points(x[2], jitter(x[3]), col="darkblue", pch=17, cex=2)
}

shinyServer(
  
  function(input, output) {
    output$mpgwt <- renderPlot({
      df <- data.frame(am=input$am,wt=input$wt,qsec=input$qsec)
      mypredict <- predict(sfit,df)
      output$empg <- renderPrint({as.character(mypredict)})
      x <- c(input$wt,input$qsec,mypredict)
      drawPlots(x)
    })
  }
)