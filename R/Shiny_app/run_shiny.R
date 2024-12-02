
library("shiny")
# Load necessary scripts
source("ui.R")
source("server.R")

# Run the Shiny app
shinyApp(ui = ui, server = server)