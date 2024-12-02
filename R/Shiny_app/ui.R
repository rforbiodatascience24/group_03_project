library(shiny)
data <- read_csv(here("data/03_dat_aug_shiny.csv"))

# Define UI
ui <- fluidPage(
  titlePanel("Diabetes Patient Readmissions"),
  
  sidebarLayout(
    sidebarPanel(
      
      # Filter for readmission status
      selectInput(
        "readmission_filter",
        "Filter by Readmission Status:",
        choices = c(unique(data$readmitted), "All"),
        selected = "All"
      ),
      
      # Checkboxes for medications
      checkboxGroupInput(
        "medication_filter",
        "Filter by Medications:",
        choices = c(
          "Metformin", "Repaglinide", "Nateglinide", "Chlorpropamide",
          "Glimepiride", "Acetohexamide", "Glipizide", "Glyburide",
          "Tolbutamide", "Pioglitazone", "Rosiglitazone", "Acarbose",
          "Miglitol", "Troglitazone", "Tolazamide", "Examide",
          "Sitagliptin", "Insulin", "Glyburide-Metformin", 
          "Glipizide-Metformin", "Glimepiride-Pioglitazone",
          "Metformin-Rosiglitazone", "Metformin-Pioglitazone"
        ),
        selected = NULL
      )
    ),
    
    mainPanel(
      # Display a bar plot
      plotOutput("readmissionPlot")
    )
  )
)