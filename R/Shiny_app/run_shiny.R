library(shiny)
library(tidyverse)
library(here)
#Load necessary scripts
source("ui.R")
source("server.R")
source("Functions.R")

# Run the Shiny app
shinyApp(ui = ui, server = server)