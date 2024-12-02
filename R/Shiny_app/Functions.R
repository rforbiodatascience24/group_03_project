library(shiny)

# Function to load and preprocess the dataset
load_data <- function() {
  # Check if the file exists
  file_path <- here("data/03_dat_aug_shiny.csv")
  if (!file.exists(file_path)) {
    stop("Error: File not found.")
  }
  
  # Load the CSV file
  data <- read_csv(file_path)
  
  ## Ensure medication columns are treated as binary
  #medication_columns <- c(
  #  "metformin", "repaglinide", "nateglinide", "chlorpropamide",
  #  "glimepiride", "acetohexamide", "glipizide", "glyburide",
  #  "tolbutamide", "pioglitazone", "rosiglitazone", "acarbose",
  #  "miglitol", "troglitazone", "tolazamide", "examide",
  #  "sitagliptin", "insulin", "glyburide-metformin", 
  #  "glipizide-metformin", "glimepiride-pioglitazone",
  #  "metformin-rosiglitazone", "metformin-pioglitazone"
  #)
  #data[medication_columns] <- lapply(data[medication_columns], as.integer)
  
  return(data)
}