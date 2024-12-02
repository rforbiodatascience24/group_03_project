library(shiny)
df <- read.csv("03_dat_aug.csv")

# Define UI
ui <- fluidPage(
  titlePanel("Diabetes Patient Readmissions"),
  
  sidebarLayout(
    sidebarPanel(
      # File upload to load the data
      fileInput("data_file", "Upload Dataset", accept = ".csv"),
      
      # Filter for readmission status
      selectInput(
        "readmission_filter",
        "Filter by Readmission Status:",
        choices = c("All", unique(df$readmitted)),
        selected = "All"
      ),
      selectInput(
        "age",
        "Filter by age group:",
        choices = c("All", sort(unique(df$age))),
        selected = "All"
      ),
      selectInput(
        "race",
        "Filter by race:",
        choices = c("All", sort(unique(df$race))),
        selected = "All"
      ),
      selectInput(
        "gender",
        "Filter by gender",
        choices = c("All", sort(unique(df$gender))),
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
