library(shiny)

# Function to load and preprocess the dataset
load_data <- function() {
  # Check if the file exists
  file_path <- here("data/03_dat_aug.csv")
  if (!file.exists(file_path)) {
    stop("Error: File not found.")
  }
  
  # Load the CSV file
  data <- read_csv(file_path)
  
  return(data)
}