# ===============================================
# 📖 Lecture-Script: Using the `$` Sign in R
# ===============================================

# --- 🔷 Introduction
# The `$` sign is a powerful tool in R to access columns or variables in a data frame.
# It simplifies referencing specific variables and makes your code more readable.

# --- Key Goals:
# 1️⃣ Understand how to use `$` for accessing data.
# 2️⃣ Compare `$` with other methods like indexing (`[ ]`).
# 3️⃣ Practical examples for filtering, modifying, and analyzing columns.

# ===============================================
# 🔷 Part 1: Basics of the `$` Sign
# ===============================================

# --- 🛠 Example 1: Accessing columns
# Load a dataset
stats <- read.csv(file.choose())  # Choose a CSV file
print(head(stats))  # View the first 6 rows

# Access a column using `$`
print(stats$Internet.users)  # Prints the "Internet.users" column

# --- 🛠 Example 2: Comparing `$` with indexing
# Access "Internet.users" using indexing
print(stats[, "Internet.users"])  # Same output as `$`

# --- 🛠 Key Insight:
# Use `$` when you know the column name and prefer simplicity.

# ===============================================
# 🔷 Part 2: Selecting and Modifying Data
# ===============================================

# --- 🛠 Example 3: Access specific rows within a column
print(stats$Internet.users[3])  # Access the 3rd row of "Internet.users"
print(stats$Country.Name[3])    # Access the 3rd country name

# --- 🛠 Example 4: Modifying column values
stats$Internet.users[3] <- 99.9  # Set the 3rd value to 99.9
print(stats$Internet.users[3])

# --- 🛠 Example 5: Adding new columns
stats$Population.in.millions <- stats$Birth.rate * 1.3  # Example calculation
print(head(stats))  # View the updated dataset

# --- 🛠 Key Insight:
# You can create derived variables by using `$` for both accessing and assigning.

# ===============================================
# 🔷 Part 3: Filtering and Levels
# ===============================================

# --- 🛠 Example 6: Filtering rows
# Filter rows where Internet.users > 50
filtered_stats <- stats[stats$Internet.users > 50, ]
print(filtered_stats)

# --- 🛠 Example 7: Working with levels (if applicable)
# If a column is a factor, use `levels()` to view its unique categories
print(levels(stats$Income.Group))

# --- 🛠 Key Insight:
# `$` is highly versatile and works seamlessly with filtering and factor manipulation.

# ===============================================
# 🔷 Part 4: Advanced Usage
# ===============================================

# --- 🛠 Example 8: Using `$` in custom functions
# Create a function to calculate the mean of a numeric column
mean_column <- function(data, column_name) {
  return(mean(data[[column_name]], na.rm = TRUE))  # Equivalent to data$column
}
print(mean_column(stats, "Internet.users"))  # Mean of Internet.users

# --- 🛠 Example 9: Combining `$` with logical conditions
# Find rows where Income.Group is "High income" and Internet.users > 75
high_income_high_internet <- stats[stats$Income.Group == "High income" & stats$Internet.users > 75, ]
print(high_income_high_internet)

# ===============================================
# 🔷 Practice Exercises
# ===============================================

# --- 📝 Exercise 1: Filtering with `$`
# 1. Filter rows where "Birth.rate" is below 20 and "Income.Group" is "Low income".
# 2. Create a new column with the ratio of "Internet.users" to "Birth.rate".

# --- 📝 Exercise 2: Levels and Summaries
# 1. Use `levels()` to list the unique Income Groups.
# 2. Calculate the median Internet users for "Upper middle income" countries.

# --- 📝 Exercise 3: Row and Column Operations
# 1. Update all rows where "Internet.users" < 10 to set the value to NA.
# 2. Save the modified dataset to a new CSV file.

# ===============================================
# 🔵 Summary
# ===============================================

# 🟢 **Key Takeaways:**
# 1️⃣ `$` is a simple, effective way to access and modify columns in a data frame.
# 2️⃣ Use `$` for readable and concise code when column names are known.
# 3️⃣ Combine `$` with logical operations for powerful filtering and calculations.

# --- End of Lecture --- 🚀