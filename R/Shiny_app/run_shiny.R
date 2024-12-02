library(shiny)
library(tidyverse)
library(here)
data <- read_csv(here("data/03_dat_aug.csv"))

#Load necessary scripts
source("ui.R")
source("server.R")

# Run the Shiny app
shinyApp(ui = ui, server = server)