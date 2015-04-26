library(shiny)
shinyUI(
  pageWithSidebar(
    headerPanel("Petrol Consumption Prediction (MPG)"),
    sidebarPanel(
      h3("Enter estimation criteria :"),
      h3(""),
      sliderInput("wt","Select Vehicle Weight (1000lbs)",value=3,min=.5,max=5.2,step=.1,),
      radioButtons("am", "Select Transmission Type:",
                   c("Manual" = "1",
                     "Automatic" = "0")),
      
      numericInput('qsec','Input desired Quarter mile per second',15.5,min=14.2,max=22.8,step=.1),
      helpText("Note: Please select the weight of car, the transmission type,", 
               "and the quarter miles per second")
    ),
    
    mainPanel(
      h3('The estimated MPG base on your selected variance is'),
      plotOutput("mpgwt"),
      verbatimTextOutput("empg"),
      helpText("Note: The triangles on the plots ", 
               "is the esitmated MPG")
    )
  )
)