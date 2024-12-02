library(shiny)

# Function to load and preprocess the dataset
load_data <- function(file_path) {
  # Check if the file exists
  if (!file.exists(file_path)) {
    stop("Error: File not found.")
  }
  
  # Load the CSV file
  data <- read.csv(file_path, stringsAsFactors = FALSE) # test 
  
  # Ensure medication columns are treated as binary
  medication_columns <- c(
    "Metformin", "Repaglinide", "Nateglinide", "Chlorpropamide",
    "Glimepiride", "Acetohexamide", "Glipizide", "Glyburide",
    "Tolbutamide", "Pioglitazone", "Rosiglitazone", "Acarbose",
    "Miglitol", "Troglitazone", "Tolazamide", "Examide",
    "Sitagliptin", "Insulin", "Glyburide-Metformin", 
    "Glipizide-Metformin", "Glimepiride-Pioglitazone",
    "Metformin-Rosiglitazone", "Metformin-Pioglitazone"
  )
  data[medication_columns] <- lapply(data[medication_columns], as.integer)
  
  return(data)
}