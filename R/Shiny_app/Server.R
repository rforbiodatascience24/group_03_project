library(shiny)

# Define server logic
server <- function(input, output) {
  
  # Reactive data loading
  dataset <- reactive({
    req(input$data_file) # Ensure a file is uploaded
    load_data(input$data_file$datapath) # Call the load_data function
  })
  
  # Reactive filtering
  filtered_data <- reactive({
    data <- dataset()
    
    # Filter by readmission status
    if (input$readmission_filter != "All") {
      data <- data[data$Readmitted == input$readmission_filter, ]
    }
    
    # Filter by medications
    if (!is.null(input$medication_filter)) {
      for (med in input$medication_filter) {
        if (med %in% colnames(data)) {  # Only filter if column exists
          data <- data[data[[med]] == 1, ]
        } else {
          warning(paste("Medication column", med, "not found in dataset"))
        }
      }
    }
    
    if (nrow(data) == 0) {
      return(NULL)  # Handle empty results gracefully
    }
    
    data
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
    readmission_counts <- table(data$Readmitted)
    
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