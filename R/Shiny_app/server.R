library(shiny)

# Define server logic
server <- function(input, output) {
  
  # Reactive data loading
  dataset <- df
  
  # Reactive filtering
  filtered_data <- reactive({
    data <- dataset
    
    # Filter by readmission status
    if (input$readmission_filter != "All") {
      data <- data[data$readmitted == input$readmission_filter, ]
    }
    # Filter by Age
    if  (input$age != "All") {
      data <- data[data$age == input$age, ]
    }  
    # Filter by Race
    if  (input$race != "All") {
      data <- data[data$race == input$race, ]
    }
    # Filter by Gender
    if  (input$gender != "All") {
      data <- data[data$gender == input$gender, ]
    }
    
    # Filter by medications
    if (!is.null(input$medication_filter)) {
      for (med in input$medication_filter) {
        med <- tolower(med)
        if (med %in% colnames(data)) {
          # Only filter if column exists
          data <- data[data[[med]] != "No", ]
        } else {
          warning(paste("Medication column", med, "not found in dataset"))
        }
      }
    }
    
    if (nrow(data) == 0) {
      return(NULL)  # Handle empty results gracefully
    }
    
    return(data)
  })
  
  # Render the bar plot
  output$readmissionPlot <- renderPlot({
    data <- filtered_data()
    if (is.null(data)) {
      plot.new()
      text(0.5, 0.5, "No data to display after filtering", cex = 1.5)
      return()
    }
    
    # Count the number of patients by readmission status
    readmission_counts <- table(data$readmitted)
    
    # Create a bar plot
    barplot(
      readmission_counts,
      main = "Readmission Status",
      ylab = "Number of Patients",
      xlab = "Readmission",
      col = c("skyblue", "orange", "lightgreen")
    )
  })
}
