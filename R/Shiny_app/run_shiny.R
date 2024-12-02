library(shiny)
data_1 <- read_csv(here("data/03_dat_aug_shiny.csv"))
#Load necessary scripts
source("ui.R")
source("server.R")
source("Functions.R")

# Run the Shiny app
shinyApp(ui = ui, server = server)