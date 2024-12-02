library(shiny)
#Load necessary scripts
source("Ui.R")
source("Server.R")
source("Functions.R")

# Run the Shiny app
shinyApp(ui = ui, server = server)