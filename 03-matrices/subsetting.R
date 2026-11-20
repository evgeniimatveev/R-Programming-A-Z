# ===============================================
# 📖 Lecture-Script: Subsetting in R
# ===============================================

# --- 🔷 Part 1: Subsetting Vectors
# Vectors are the simplest data structures in R, and subsetting allows us to extract parts of them.
x <- c("a", "b", "c", "d", "e")  # Create a character vector
x

# Extract specific elements
x[c(1, 5)]  # Extract the 1st and 5th elements: "a" and "e"
x[1]        # Extract the 1st element: "a"

# Exclude elements using negative indices
x[-1]       # Exclude the 1st element: "b", "c", "d", "e"
x[-c(1, 3)] # Exclude the 1st and 3rd elements: "b", "d", "e"

# Logical subsetting
logical_subset <- c(TRUE, FALSE, TRUE, FALSE, TRUE)
x[logical_subset]  # Extract elements where the condition is TRUE: "a", "c", "e"

# Subsetting with names
names(x) <- c("Alpha", "Bravo", "Charlie", "Delta", "Echo")
x["Alpha"]         # Extract by name
x[c("Alpha", "Echo")]  # Subset by multiple names

# --- 🔵 Practice
# 1️⃣ Create a numeric vector `y <- c(10, 20, 30, 40, 50)`.
# Extract elements greater than 20.
y <- c(10, 20, 30, 40, 50)
y[y > 20]

# ===============================================
# 🔷 Part 2: Subsetting Matrices
# ===============================================

# --- Example: The "Games" matrix from the Basketball dataset
Games  # View the matrix

# Extract rows and columns
Games[1:3, 6:10]         # Rows 1-3 and columns 6-10
Games[c(1, 10), ]        # Rows 1 and 10, all columns
Games[, c("2007", "2012")]  # All rows for specific columns

# Reordering columns
Games[, c("2007", "2012", "2014", "2005")]  # Specific columns in custom order

# Extract single rows or columns
Games[1, ]            # Extract the 1st row (returns a vector)
Games[, 1]            # Extract the 1st column (returns a vector)

# Check structure of the result
is.matrix(Games[1, ])  # FALSE, subsetting a single row drops the matrix structure

# Preserve matrix structure with `drop = FALSE`
Games[1, , drop = FALSE]  # 1st row as a 1-row matrix
Games[, 1, drop = FALSE]  # 1st column as a 1-column matrix

# --- 🔵 Practice
# 1️⃣ Subset `Games` to extract rows 5-8 and columns for "2010" to "2014".

# ===============================================
# 🔷 Part 3: Logical and Conditional Subsetting
# ===============================================

# Logical subsetting
Games[Games > 80]  # Extract all values greater than 80

# Replace values greater than 80 with NA
Games[Games > 80] <- NA
Games

# Conditional subsetting using row sums
subset_rows <- rowSums(Games, na.rm = TRUE) > 500  # Players with total games > 500
Games[subset_rows, ]  # Subset based on condition

# Subset with row and column names
Games["LeBronJames", "2012"]  # Specific player and season
Games[c("KobeBryant", "KevinDurant"), c("2007", "2014")]  # Multiple players and seasons

# --- 🔵 Practice
# 1️⃣ Write a function that extracts rows where total games played exceed a threshold.
filter_games <- function(matrix, threshold = 500) {
  return(matrix[rowSums(matrix, na.rm = TRUE) > threshold, , drop = FALSE])
}

# Use the function
high_games <- filter_games(Games, threshold = 600)
high_games

# ===============================================
# 🔷 Part 4: Using the Drop Option
# ===============================================

# Dropping dimensions
Games[1, ]           # Returns a vector (drops matrix structure)
Games[1, , drop = FALSE]  # Retains the matrix structure

# Practical example: Summing rows while retaining structure
row_sums <- rowSums(Games[1:3, , drop = FALSE])  # Sum across rows 1-3
row_sums

# --- 🔵 Practice
# 1️⃣ Extract the 3rd column from `Games` as both a vector and a matrix.

# ===============================================
# 🔷 Part 5: Advanced Matrix Subsetting
# ===============================================

# Example: Replace specific values
Games[1:3, "2007"] <- 0  # Set specific cells to 0
Games

# Example: Subset and calculate column averages
selected_columns <- Games[, c("2007", "2012")]
colMeans(selected_columns, na.rm = TRUE)  # Calculate averages for selected columns

# --- 🔵 Practice
# 1️⃣ Subset rows 3-6 for seasons "2005" to "2010", then find the row means.

# ===============================================
# 🔵 Key Takeaways
# ===============================================

# 1️⃣ Subsetting is essential for data manipulation in R.
# 2️⃣ Use `drop = FALSE` to preserve matrix structure when subsetting single rows or columns.
# 3️⃣ Combine logical and conditional subsetting for flexible data extraction.
# 4️⃣ Practice subsetting on vectors, matrices, and your own datasets to master the concept.

# --- End of Script --- 🚀