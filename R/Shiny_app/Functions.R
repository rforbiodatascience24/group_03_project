library(shiny)

# Function to load the dataset
load_data <- function() {
  # Hardcoded file path
  file_path <- "data/03_dat_aug_shiny.csv"
  
  # Check if the file exists
  if (!file.exists(file_path)) {
    stop("Error: File not found at the specified path.")
  }  
  # Load the CSV file
  data <- read.csv(file_path, stringsAsFactors = FALSE) 
  
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

  return(data)
}