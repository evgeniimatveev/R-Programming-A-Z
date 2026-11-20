# ===============================================
# 📖 Lecture-Script: Data Import and Exploration in R
# ===============================================

# --- 🔷 Introduction
# Importing and exploring data is the foundation of any data analysis project.
# In this script, we will cover:
# 1️⃣ Reading data from files.
# 2️⃣ Exploring datasets with basic R functions.
# 3️⃣ Handling missing values.
# 4️⃣ A practical guide for working with real-world data.

# --- 🛠 Tip: Organize your workspace
# Always start by clearing your workspace to avoid conflicts.
rm(list = ls())  # Clears all objects in the environment
cat("\014")      # Clears the console
# Use `getwd()` to check your current working directory.
print(getwd())

# ===============================================
# 🔷 Part 1: Importing Data
# ===============================================

# --- 🛠 Example 1: Reading a CSV file
# Use `read.csv()` to import data from a CSV file.
data <- read.csv(file.choose())  # Prompts user to select a CSV file
print(head(data))  # Display the first 6 rows of the data

# --- 🛠 Key Insight:
# Always check your imported data to ensure it was loaded correctly.

# --- 🛠 Example 2: Reading a file with custom options
# You can customize `read.csv()` for different delimiters or missing values.
data_custom <- read.csv(
  "example.csv",
  sep = ",",  # Delimiter
  na.strings = c("", "NA", "Missing")  # Treat empty strings as NA
)
print(summary(data_custom))  # Quick summary of the data

# ===============================================
# 🔷 Part 2: Exploring Data
# ===============================================

# --- 🛠 Example 3: Basic exploration functions
# Check the structure and size of the dataset
print(dim(data))  # Dimensions: rows and columns
print(str(data))  # Structure: column types and data

# --- 🛠 Example 4: Summarizing data
print(summary(data))  # Statistical summary for each column

# --- 🛠 Example 5: Viewing data samples
print(head(data, 10))  # First 10 rows
print(tail(data, 5))   # Last 5 rows

# --- 🛠 Key Insight:
# Use `View(data)` to open a spreadsheet-like view of the data in RStudio.

# ===============================================
# 🔷 Part 3: Handling Missing Values
# ===============================================

# --- 🛠 Example 6: Identifying missing values
missing_values <- is.na(data)  # Logical matrix of TRUE/FALSE
print(colSums(missing_values))  # Count of missing values per column

# --- 🛠 Example 7: Removing rows with missing data
data_clean <- na.omit(data)  # Remove rows with missing values
print(dim(data_clean))  # Check the new dimensions

# --- 🛠 Example 8: Replacing missing values
data_filled <- data
data_filled$ColumnName[is.na(data_filled$ColumnName)] <- median(
  data_filled$ColumnName, na.rm = TRUE
)  # Replace NAs with median of the column

# ===============================================
# 🔷 Part 4: Filtering and Subsetting
# ===============================================

# --- 🛠 Example 9: Subsetting data
subset_data <- data[data$ColumnName > 100, ]  # Rows where ColumnName > 100
print(head(subset_data))

# --- 🛠 Example 10: Filtering multiple conditions
filtered_data <- data[data$Column1 == "Category" & data$Column2 > 50, ]
print(filtered_data)

# --- 🛠 Key Insight:
# Use `subset()` for more readable subsetting.
# Example:
subset_data_alt <- subset(data, ColumnName > 100)

# ===============================================
# 🔷 Part 5: Saving and Exporting Data
# ===============================================

# --- 🛠 Example 11: Writing data to a CSV file
write.csv(data_clean, "cleaned_data.csv", row.names = FALSE)  # Save without row indices

# --- 🛠 Key Insight:
# Always specify `row.names = FALSE` to avoid writing row indices unless needed.

# ===============================================
# 🔵 Practice Exercises
# ===============================================

# --- 📝 Exercise 1: Data Exploration
# 1. Load a CSV file of your choice.
# 2. Count the missing values in each column.
# 3. Create a new dataset with rows where a specific column value is greater than the mean of that column.

# --- 📝 Exercise 2: Missing Value Handling
# 1. Replace missing values in a numeric column with the column's mean.
# 2. Remove all rows with missing data and save the cleaned dataset to a new CSV file.

# ===============================================
# 🔵 Summary
# ===============================================

# 🟢 **Key Takeaways:**
# 1️⃣ Use `read.csv()` to load data and always inspect it using functions like `head()` and `summary()`.
# 2️⃣ Handle missing values effectively with `na.omit()` or by replacing them.
# 3️⃣ Filter and subset data to focus on relevant information.
# 4️⃣ Save your processed data using `write.csv()` for future use.

# --- End of Lecture --- 🚀