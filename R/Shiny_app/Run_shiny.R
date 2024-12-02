library(shiny)
#Load necessary scripts
source("UI.R")
source("Server.R")
source("Functions.R")

# Run the Shiny app
shinyApp(ui = ui, server = server)