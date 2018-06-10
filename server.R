server <- function(input, output) {
        set_key("AIzaSyBY20H089DMPHABXcPhty3HFGgsXmrVQw0")
        output$map <- renderGoogle_map({
                google_map(location = c(-40.30512, -20.31195),
                          key = "AIzaSyBY20H089DMPHABXcPhty3HFGgsXmrVQw0") 
        })
}
