# group_03_project: Diabetes patient analysis

## Project Contributors

s225049: Ida Sofie Goldschmidt / isgoldsch\
s225074: Annekatrine Kirketerp-Møller / annekatrinekm\
s225051: Emil August Dissing Berntsen / EmilBerntsen-ui\
s224974: Rasmus Kamp Nielsen / rasmuskamp\
s215109: Rolf Larsen / RolfLarsenGH

## Installation and use

### Direct download of data:

The data can be retrieved directly from the following link:

<https://archive.ics.uci.edu/ml/machine-learning-databases/00296/dataset_diabetes.zip>

### More about the data:

The data can also be retrieved from the following site:

<https://archive.ics.uci.edu/dataset/296/diabetes+130-us+hospitals+for+years+1999-2008>

Using the "DOWNLOAD" button on the right side, the same zip-compressed data file as above is downloaded.

## Porject presentation

HERE THE LINK TO THE PROJECT PRESENTATION IS INSERTED!

## Project Description

Our project is analyzing data from 130 US Hospitals in the years 1999-2008. The used dataset focuses on patients with diabetes who had laboratory tests, received medications, and had a hospital stay up to 14 days. The data set includes 101.766 instances, where each instance is one visit to the hospital by a diabetes patient.

The data is merged with an ICD9 database to describe the diagnoses and analyzed to show patient groups, which are admitted and readmitted more than others. The purpose is to gain insight into groups of patient being admitted more than others.

## Content of repository:

### 01_load_data.qmd

Creating the \_raw folder and getting the data. The data contains the full patient information along with admission data. The admission data file is stating codes, decribing how a patient is admitted into the hospital.\
Here the ICD9 code database is also fetched. The ICD9 codes are used instead of diagnoses and procedures in the US.

### 02_clean_data.qmd

Here the admission data is made into a tidy data frame. The ICD9 data is also made into a tidy data frame with short and long descriptions for each diagnosis.

The full patient dataset is then cleaned to show NA values instead of "?" e.g. and columns containing yes or no is standardized.

The admission data is then joined into the diabetes data. The same is done for the ICD9 dataset.

### 03_augment.qmd

Augment the dataset, adding columns for amount of entries pr patient and total days in hospital.

### 04_description.qmd

Information about the dataset, such as distribution of age and gender, and patient with most days spend in hospital.

### 05_visualize_data.R

Vizualizations of the dataset. Here information about gender, age and number of diagnoses are quantified in plots.

### 06_PCA_analysis.R

PCA-analysis. Here a PCA analysis is performed on the data set to see if we can reduce the dimensionality to view patterns that may contribute to readmittance. It is then plotted in 2D and 3D to see if any patterns can be seen in the data set.

### 07_shiny.R

A shiny app created as a tool to look up.... INSERT DESCRIPTION

Here we insert the needed packages and installations, which are needed to run the code (if neccessary).
