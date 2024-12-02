library(shiny)
library(tidyverse)
data <- read_csv("03_dat_aug.csv")

print(head(data))
#Load necessary scripts
source("ui.R")
source("server.R")

# Run the Shiny app
shinyApp(ui = ui, server = server)


