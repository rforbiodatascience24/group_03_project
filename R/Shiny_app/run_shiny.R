library(shiny)
data <- read.csv("03_dat_aug.csv")

#Load necessary scripts
source("ui.R")
source("server.R")

# Run the Shiny app
shinyApp(ui = ui, server = server)