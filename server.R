library(shiny)
library(googleway)

server <- function(input, output) {
  set_key("AIzaSyBY20H089DMPHABXcPhty3HFGgsXmrVQw0")
  
  output$map <- renderGoogle_map({
    google_map(location = c(-20.31195,-40.30512),
               key = "AIzaSyBY20H089DMPHABXcPhty3HFGgsXmrVQw0",
               zoom = 16, split_view = "pane",width = 1940,height = 800) 
  })
}