library(shiny)
library(leaflet)

shinyServer(function(input, output) {
        output$mymap <- renderLeaflet({
                leaflet() %>%
                        addTiles() %>%
                        setView(lng = -40.30512, lat = -20.31195 , zoom = 20) %>%
                        addMarkers(lng = -40.30512, lat = -20.31195, popup = "Unimed Vitória") %>%
                        addPopups(lng = -40.30512, lat = -20.3119, popup = "Unimed Vitória") 
                
        })
        
})