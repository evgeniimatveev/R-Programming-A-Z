# ===============================================
# 📖 Lecture-Script: Exploratory Data Analysis (EDA) in R
# ===============================================

# --- 🔷 Introduction
# Exploratory Data Analysis (EDA) helps understand the structure of data, detect errors,
# and summarize key characteristics using visual and numerical techniques.

# --- Key Goals:
# 1️⃣ Import and inspect data.
# 2️⃣ Understand data structure and types.
# 3️⃣ Summarize statistics for continuous and categorical variables.
# 4️⃣ Identify and handle missing values.
# 5️⃣ Save clean datasets.

# ===============================================
# 🔷 Part 1: Importing Data
# ===============================================

# --- 🛠 Example 1: Import CSV data
# Prompt to choose a file interactively
data <- read.csv(file.choose())  # Select a CSV file
print(head(data))  # Display the first 6 rows

# --- 🛠 Key Insight:
# Use `getwd()` and `setwd("path")` to control file paths. Example:
# Working directory: open R-Programming-A-Z.Rproj so paths are relative to the repo root
print(getwd())  # Confirm the current directory

# ===============================================
# 🔷 Part 2: Inspecting Data Structure
# ===============================================

# --- 🛠 Example 2: Basic inspection
print(dim(data))  # Dimensions of the dataset
print(names(data))  # Column names
print(str(data))  # Structure of the dataset: data types, columns

# --- 🛠 Example 3: Data preview
print(head(data, 10))  # View first 10 rows
print(tail(data, 5))   # View last 5 rows

# --- 🛠 Example 4: Column statistics
print(summary(data))  # Statistical summary: Min, Max, Median, Mean, etc.

# --- 🛠 Key Insight:
# `str()` is one of the most useful functions to quickly understand data structure.

# ===============================================
# 🔷 Part 3: Handling Missing Values
# ===============================================

# --- 🛠 Example 5: Identifying missing values
missing_counts <- colSums(is.na(data))  # Count missing values per column
print(missing_counts)

# --- 🛠 Example 6: Removing rows with missing values
data_clean <- na.omit(data)  # Drops rows with missing data
print(dim(data_clean))  # New dimensions

# --- 🛠 Example 7: Replacing missing values
# Replace NAs in a numeric column with the median value
data$ColumnName[is.na(data$ColumnName)] <- median(data$ColumnName, na.rm = TRUE)

# --- 🛠 Key Insight:
# Carefully decide whether to remove or replace missing data based on analysis needs.

# ===============================================
# 🔷 Part 4: Subsetting and Filtering Data
# ===============================================

# --- 🛠 Example 8: Subsetting rows
# Extract rows where Birth.rate is greater than the mean
subset_data <- subset(data, Birth.rate > mean(Birth.rate, na.rm = TRUE))
print(head(subset_data))

# --- 🛠 Example 9: Filtering specific conditions
# Select rows for countries with "High income" and Internet users above 50%
filtered_data <- data[data$Income.Group == "High income" & data$Internet.users > 50, ]
print(filtered_data)

# --- 🛠 Key Insight:
# Use `subset()` or logical indexing (`[ ]`) for flexible filtering.

# ===============================================
# 🔷 Part 5: Summarizing and Exporting
# ===============================================

# --- 🛠 Example 10: Exporting cleaned data
write.csv(data_clean, "cleaned_data.csv", row.names = FALSE)  # Save clean dataset

# --- 🛠 Example 11: Saving filtered results
write.csv(filtered_data, "filtered_data.csv", row.names = FALSE)  # Save filtered dataset

# --- 🛠 Key Insight:
# Always validate your data export by re-importing and inspecting the saved file.

# ===============================================
# 🔷 Practice Exercises
# ===============================================

# --- 📝 Exercise 1: Missing Value Analysis
# 1. Identify columns with missing values in the dataset.
# 2. Replace missing values in "Internet.users" with the mean of the column.

# --- 📝 Exercise 2: Subsetting
# 1. Extract rows where "Income.Group" is "Low income" and "Birth.rate" > 20.
# 2. Save this subset to a new CSV file.

# --- 📝 Exercise 3: Summarizing Data
# 1. Calculate the average Internet users for each income group.
# 2. Find the country with the maximum Birth rate.

# ===============================================
# 🔵 Summary
# ===============================================

# 🟢 **Key Takeaways:**
# 1️⃣ EDA is essential for understanding and cleaning your dataset.
# 2️⃣ Use `summary()` and `str()` for quick overviews of data.
# 3️⃣ Handle missing values with care to avoid introducing biases.
# 4️⃣ Export cleaned or filtered data for further analysis.

# --- End of Lecture --- 🚀