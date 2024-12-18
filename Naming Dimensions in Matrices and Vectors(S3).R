# ===============================================
# 📖 Lecture-Script: Naming Dimensions in Matrices and Vectors
# ===============================================

# --- 🔷 Introduction
# Naming dimensions in R helps make data more descriptive and easier to work with.  
# By assigning names to rows, columns, or elements, you can index using names 
# instead of numeric positions, improving code readability and maintainability.  

# --- 🛠 Key Concepts:
# 1️⃣ Assigning names to vectors with `names()`.  
# 2️⃣ Using `rownames()` and `colnames()` for matrices.  
# 3️⃣ Accessing elements by name.  

# ===============================================
# 🔷 Part 1: Naming Vectors
# ===============================================

# --- 🛠 Example 1: Assigning names to a vector
# Create a numeric vector
vector <- c(100, 200, 300, 400, 500)

# Assign names
names(vector) <- c("a", "b", "c", "d", "e")
print(vector)  # Output: a   b   c   d   e 
#       100 200 300 400 500

# Access elements using names
print(vector["c"])  # Access the value of "c": [1] 300
print(vector[c("b", "e")])  # Access "b" and "e": [1] 200 500

# --- 🛠 Key Insight:
# Use `names()` to add labels to individual elements of a vector, allowing intuitive access.

# ===============================================
# 🔷 Part 2: Naming Dimensions of Matrices
# ===============================================

# --- 🛠 Example 2: Adding row and column names
# Create a 3x3 matrix
matrix_data <- matrix(1:9, nrow = 3)
print(matrix_data)
#      [,1] [,2] [,3]
# [1,]    1    4    7
# [2,]    2    5    8
# [3,]    3    6    9

# Assign names to rows and columns
rownames(matrix_data) <- c("Row1", "Row2", "Row3")
colnames(matrix_data) <- c("Col1", "Col2", "Col3")
print(matrix_data)
#       Col1 Col2 Col3
# Row1     1    4    7
# Row2     2    5    8
# Row3     3    6    9

# --- 🛠 Example 3: Accessing elements by name
print(matrix_data["Row2", "Col3"])  # Access element at Row2, Col3: [1] 8
print(matrix_data["Row1", ])        # Access the entire Row1: [1] 1 4 7
print(matrix_data[, "Col2"])        # Access the entire Col2: [1] 4 5 6

# --- 🛠 Example 4: Modifying values using names
matrix_data["Row3", "Col1"] <- 99
print(matrix_data)

# ===============================================
# 🔷 Part 3: Practical Examples
# ===============================================

# --- 🛠 Example 5: Using names in sports data
# Players and seasons data
Players <- c("KobeBryant", "LeBronJames", "KevinDurant")
Seasons <- c("2005", "2006", "2007", "2008", "2009")

# Create a Field Goals matrix
FieldGoals <- matrix(
  data = c(978, 813, 602, 800, 756, 775, 794, 574, 849, 756, 794, 739, 731, 653, 671),
  nrow = 3,
  byrow = TRUE
)
rownames(FieldGoals) <- Players
colnames(FieldGoals) <- Seasons

print(FieldGoals)
#               2005 2006 2007 2008 2009
# KobeBryant     978  813  602  800  756
# LeBronJames    775  794  574  849  756
# KevinDurant    794  739  731  653  671

# Access specific player and season
print(FieldGoals["LeBronJames", "2007"])  # [1] 574

# Filter rows or columns using names
print(FieldGoals["KobeBryant", ])  # All seasons for KobeBryant
print(FieldGoals[, c("2008", "2009")])  # Stats for 2008 and 2009

# --- 🛠 Key Insight:
# Assigning row and column names makes your code more intuitive for working with real-world data.

# ===============================================
# 🔷 Part 4: Using `dimnames()` for Matrices
# ===============================================

# --- 🛠 Example 6: Assigning names with `dimnames()`
# Create a 3x3 matrix
matrix_data <- matrix(1:9, nrow = 3)

# Assign names using `dimnames()`
dimnames(matrix_data) <- list(
  c("RowA", "RowB", "RowC"),  # Row names
  c("Column1", "Column2", "Column3")  # Column names
)
print(matrix_data)

# Access and modify elements
matrix_data["RowA", "Column3"] <- 100
print(matrix_data)

# --- 🛠 Key Insight:
# `dimnames()` allows assigning names directly in one step, useful for compact code.

# ===============================================
# 🔷 Part 5: Removing Names
# ===============================================

# --- 🛠 Example 7: Removing names from matrices and vectors
names(vector) <- NULL  # Remove names from a vector
print(vector)

rownames(matrix_data) <- NULL  # Remove row names
colnames(matrix_data) <- NULL  # Remove column names
print(matrix_data)

# --- 🛠 Key Insight:
# Use `NULL` to clear names if they are no longer needed.

# ===============================================
# 🔵 Practice Exercises
# ===============================================

# --- 📝 Exercise 1: Naming a Matrix
# 1. Create a 4x4 matrix using numbers 1 to 16.
# 2. Assign row names "R1", "R2", "R3", "R4" and column names "C1", "C2", "C3", "C4".
# 3. Access the element at Row3 and Column4 by name.

# --- Solution:
exercise_matrix <- matrix(1:16, nrow = 4)
rownames(exercise_matrix) <- c("R1", "R2", "R3", "R4")
colnames(exercise_matrix) <- c("C1", "C2", "C3", "C4")
print(exercise_matrix["R3", "C4"])

# --- 📝 Exercise 2: Filtering with Names
# Using the `FieldGoals` matrix:
# 1. Extract all seasons for "KevinDurant".
# 2. Extract data for the seasons "2006" and "2009".
# 3. Find the total Field Goals for "KobeBryant".

# --- Solution:
print(FieldGoals["KevinDurant", ])
print(FieldGoals[, c("2006", "2009")])
print(sum(FieldGoals["KobeBryant", ]))

# ===============================================
# 🔵 Summary
# ===============================================

# 🟢 **Key Takeaways:**
# 1️⃣ Naming rows, columns, or vector elements improves readability and functionality.  
# 2️⃣ Use `rownames()`, `colnames()`, and `dimnames()` to manage matrix names.  
# 3️⃣ Access elements using names instead of numeric indices for better clarity.  

# --- End of Lecture --- 🚀