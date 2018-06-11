library(shiny)
library(googleway)

vars <- c(
        "Hospitais" = "hospitais",
        "Clinicas" = "clinicas",
        "Pronto Socorro" = "ps",
        "Personal" = "personal",
        "Tudo" = "tupo"
)

navbarPage("Superzip", id="nav",
           
           tabPanel("Mapa Interativo",
                    div(class="outer",
                        tags$head(
                                # Include our custom CSS
                                includeCSS("styles.css"),
                                includeScript("gomap.js")
                        ),
                       
                        # Shiny versions prior to 0.11 should use class = "modal" instead.
                        absolutePanel(id = "controls", class = "panel panel-default", fixed = TRUE,
                                      draggable = TRUE, top = 60, left = "auto", right = 20, bottom = "auto",
                                      width = 330, height = "auto",
                                      
                                      h2("Explorar por CEP"),
                                      
                                      selectInput("color", "Color", vars)
                                      #plotOutput("histCentile", height = 200),
                                      #plotOutput("scatterCollegeIncome", height = 250)
                        )
                    )
           )
)




