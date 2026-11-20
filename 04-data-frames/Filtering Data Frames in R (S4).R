# ===============================================
# 📖 Lecture-Script: Filtering Data Frames in R
# ===============================================

# --- 🔷 Introduction
# Filtering data is an essential operation for data analysis.  
# In this lecture, we will:
# 1️⃣ Filter rows based on specific conditions.
# 2️⃣ Use logical operators for combined filters.
# 3️⃣ Filter data using equality and inequality checks.
# 4️⃣ Explore practical use cases with multiple examples.

# ===============================================
# 🔷 Part 1: Basic Filtering
# ===============================================

# --- 🛠 Example 1: Load the data
# Import a dataset
stats <- read.csv(file.choose())  # Choose your file
print(head(stats))  # View the first few rows

# --- 🛠 Example 2: Simple filtering using logical conditions
# Create a filter for rows where "Internet.users" < 2
filter <- stats$Internet.users < 2
print(filter)  # Logical vector: TRUE/FALSE

# Apply the filter to the data frame
filtered_data <- stats[filter, ]
print(filtered_data)

# --- 🛠 Example 3: Another filtering example
# Filter rows where "Internet.users" < 5
filter2 <- stats$Internet.users < 5
filtered_data2 <- stats[filter2, ]
print(filtered_data2)

# --- 🛠 Key Insight:
# Use logical conditions (`<`, `>`, `==`, `!=`) to create filters.

# ===============================================
# 🔷 Part 2: Filtering with Multiple Conditions
# ===============================================

# --- 🛠 Example 4: Combine multiple conditions with `&` (AND)
# Rows where "Birth.rate" > 40 and "Internet.users" < 2
filtered_combined <- stats[stats$Birth.rate > 40 & stats$Internet.users < 2, ]
print(filtered_combined)

# --- 🛠 Example 5: Filtering based on equality
# Filter rows where "Income.Group" is "Low income"
low_income <- stats[stats$Income.Group == "Low income", ]
print(low_income)

# Filter rows where "Income.Group" is "High income"
high_income <- stats[stats$Income.Group == "High income", ]
print(high_income)

# --- 🛠 Key Insight:
# Use `&` for AND conditions and `|` for OR conditions.

# ===============================================
# 🔷 Part 3: Advanced Filtering
# ===============================================

# --- 🛠 Example 6: Filtering with OR (`|`)
# Rows where "Birth.rate" > 40 OR "Internet.users" < 2
filtered_or <- stats[stats$Birth.rate > 40 | stats$Internet.users < 2, ]
print(filtered_or)

# --- 🛠 Example 7: Combining multiple logical operators
# Rows where "Income.Group" == "Low income" AND "Birth.rate" > 30
filtered_advanced <- stats[stats$Income.Group == "Low income" & stats$Birth.rate > 30, ]
print(filtered_advanced)

# --- 🛠 Example 8: Filter using `!=` (not equal)
# Rows where "Income.Group" is NOT "High income"
not_high_income <- stats[stats$Income.Group != "High income", ]
print(not_high_income)

# --- 🛠 Example 9: Create a dynamic filter
# Define threshold dynamically
threshold <- 50
dynamic_filter <- stats[stats$Birth.rate > threshold, ]
print(dynamic_filter)

# ===============================================
# 🔷 Part 4: Practical Use Case
# ===============================================

# --- 🛠 Example 10: Complex filtering for insights
# Find all countries where:
# 1. "Birth.rate" > 30
# 2. "Internet.users" < 10
# 3. "Income.Group" is "Low income"

complex_filter <- stats[stats$Birth.rate > 30 & stats$Internet.users < 10 & 
                          stats$Income.Group == "Low income", ]
print(complex_filter)

# --- 🛠 Key Insight:
# Combine conditions step by step for better readability.

# ===============================================
# 🔷 Practice Exercises
# ===============================================

# --- 📝 Exercise 1: Filtering Single Conditions
# 1. Filter rows where "Birth.rate" < 15.
# 2. Filter rows where "Internet.users" > 80.

# --- 📝 Exercise 2: Combined Conditions
# 1. Filter rows where "Income.Group" == "Upper middle income" AND "Internet.users" > 50.
# 2. Filter rows where "Birth.rate" < 20 OR "Income.Group" == "High income".

# --- 📝 Exercise 3: Logical NOT Conditions
# 1. Filter rows where "Income.Group" is NOT "Low income".
# 2. Filter rows where "Birth.rate" is NOT between 20 and 40.

# ===============================================
# 🔵 Summary
# ===============================================

# 🟢 **Key Takeaways:**
# 1️⃣ Filtering is done using logical conditions (`<`, `>`, `==`, `!=`, etc.).
# 2️⃣ Combine conditions using `&` (AND) and `|` (OR) for advanced filtering.
# 3️⃣ Use `!=` to exclude specific values.
# 4️⃣ Break down complex filters step by step for better clarity.
