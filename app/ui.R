library(shiny)

# Define UI for Fake Contacts Generator application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("User's Demographic information using Shiny App by Garvish Raval"),
  
  # Left panel with control elements for User's Demographic
  sidebarPanel(
    selectInput("gender", "Gender",
                list("All" = "all", 
                     "Male" = "male", 
                     "Female" = "female")),
    
    sliderInput("age", "Age",
                min = 18, max = 65, value = c(25,45)),
    
    checkboxInput("email", "Show email in final list", FALSE),
    checkboxInput("phone", "Show phone in final list", FALSE)
    
    
  ),
  
  # Right panel with User's Demographics List as table and bar chart for distribution
  mainPanel(
    h3("User's Demographics"),
    dataTableOutput('dataTable'),
    h3("User's Demographics by Age and Gender"),
    h5(textOutput("caption")),
    plotOutput("contactsPlot")
  )
))