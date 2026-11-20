# ===============================================
# 📖 Lecture-Script: Merging Data Frames in R 🚀
# ===============================================

# --- 🔷 Introduction
# Merging data frames is a core task when working with multiple datasets in R.
# It allows us to combine data tables based on shared columns (keys).
# Common merge types include:
# 1. Inner Join - Keeps only matching rows from both data frames.
# 2. Left Join - Keeps all rows from the first (left) data frame.
# 3. Right Join - Keeps all rows from the second (right) data frame.
# 4. Full Join - Keeps all rows from both data frames.

# ===============================================
# 🔷 Part 1: Importing and Creating Data Frames 🛠
# ===============================================

# --- Step 1: Import the First Data Frame
# Use the `read.csv()` function to load data interactively
stats <- read.csv(file.choose())  # Choose a CSV file interactively
print(head(stats))  # Display the first rows of the dataset

# --- Step 2: Create the Second Data Frame Manually
# Define a new data frame `mydf` with three columns: Country, Code, and Region
mydf <- data.frame(
  Country = c("Aruba", "Afghanistan", "Angola", "Albania", "United Arab Emirates", "Argentina"),
  Code = c("ABW", "AFG", "AGO", "ALB", "ARE", "ARG"),
  Region = c("The Americas", "Asia", "Africa", "Europe", "Middle East", "The Americas")
)

# --- View the Second Data Frame
print(head(mydf))  # Check the first rows of `mydf`

# --- Key Insight:
# Each column in a data frame represents a **vector**.

# ===============================================
# 🔷 Part 2: Combining Data Frames - Inner Join 🤝
# ===============================================

# --- Step 3: Perform an Inner Join
# Combine `stats` and `mydf` using a common key (Country.Code and Code)
merged <- merge(stats, mydf, by.x = "Country.Code", by.y = "Code")

# --- View the Result
print(head(merged))

# Display the first rows of the merged data frame

# --- Explanation:
# - `by.x` refers to the column in the first data frame (`stats`).
# - `by.y` refers to the column in the second data frame (`mydf`).
# - Only rows with matching keys in both data frames are included.

# ===============================================
# 🔷 Part 3: Exploring the Merged Data Frame 🔍
# ===============================================

# --- Step 4: Explore the Structure of the Merged Data
print(str(merged))  # Check the structure of the merged data frame
print(summary(merged))  # Summary statistics for all columns

# --- Step 5: Subset Columns and Rows for Clarity
# Remove the `Country` column to avoid redundancy
merged$Country <- NULL

# Display the updated merged data frame
print(head(merged))

# --- Example: View the Last Few Rows
print(tail(merged))  # View the last rows

# ===============================================
# 🔷 Part 4: Merge Types - Left, Right, and Full Joins 🧩
# ===============================================

# --- Step 6: Left Join
# Keeps all rows from the first (left) data frame
left_joined <- merge(stats, mydf, by.x = "Country.Code", by.y = "Code", all.x = TRUE)
print(head(left_joined))

# --- Step 7: Right Join
# Keeps all rows from the second (right) data frame
right_joined <- merge(stats, mydf, by.x = "Country.Code", by.y = "Code", all.y = TRUE)
print(head(right_joined))

# --- Step 8: Full Join
# Keeps all rows from both data frames
full_joined <- merge(stats, mydf, by.x = "Country.Code", by.y = "Code", all = TRUE)
print(head(full_joined))

# --- Key Insight:
# - `all.x = TRUE` creates a **Left Join**.
# - `all.y = TRUE` creates a **Right Join**.
# - `all = TRUE` creates a **Full Join**.

# ===============================================
# 🔷 Part 5: Practice Examples 📝
# ===============================================

# --- 📝 Exercise 1: Filter Merged Data
# Filter rows where `Region` is "The Americas"
americas <- merged[merged$Region == "The Americas", ]
print(head(americas))

# --- 📝 Exercise 2: Count Observations by Region
# Use the `table()` function to count rows by `Region`
region_count <- table(merged$Region)
print(region_count)

# --- 📝 Exercise 3: Add a New Column to Merged Data
# Example: Add a "GDP" column with sample data
merged$GDP <- c(29.8, 20.4, 2.2, 14.6, 40.7, 10.3)  # Replace with actual GDP values
print(head(merged))

# --- 📝 Exercise 4: Export the Merged Data
# Save the updated data frame to a new CSV file
write.csv(merged, "Merged_Data.csv", row.names = FALSE)

# ===============================================
# 🔷 Summary - Key Takeaways 🚀
# ===============================================

# 🟢 **Key Concepts:**
# 1️⃣ `merge()` is the primary function for combining data frames in R.
# 2️⃣ Specify `by.x` and `by.y` for matching keys from different data frames.
# 3️⃣ Types of merges:
#     - Inner Join: Rows with matching keys.
#     - Left Join: All rows from the left data frame.
#     - Right Join: All rows from the right data frame.
#     - Full Join: All rows from both data frames.
# 4️⃣ Use `table()` to summarize data and `write.csv()` to export the result.

# --- End of Lecture-Script 🏁 ---