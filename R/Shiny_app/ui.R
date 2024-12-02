library(shiny)

# Define UI
ui <- fluidPage(
  titlePanel("Diabetes Patient Readmissions"),
  
  sidebarLayout(
    sidebarPanel(
      
      # Filter for readmission status
      selectInput(
        "readmission_filter",
        "Filter by Readmission Status:",
        choices = c("All", "<30", ">30", "No"),
        selected = "All"
      ),
      
      # Checkboxes for medications
      checkboxGroupInput(
        "medication_filter",
        "Filter by Medications:",
        choices = c(
          "metformin", "repaglinide", "nateglinide", "chlorpropamide",
          "glimepiride", "acetohexamide", "glipizide", "glyburide",
          "tolbutamide", "pioglitazone", "rosiglitazone", "acarbose",
          "miglitol", "troglitazone", "tolazamide", "examide",
          "sitagliptin", "insulin", "glyburide-metformin", 
          "glipizide-metformin", "glimepiride-pioglitazone",
          "metformin-rosiglitazone", "metformin-pioglitazone"
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