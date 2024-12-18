# ===============================================
# 📖 Lecture-Script: Working with Matrices in R
# ===============================================

# --- 🔷 Introduction
# Matrices in R are two-dimensional data structures where all elements are of the same type.  
# They are widely used for mathematical computations, data analysis, and visualization.  

# --- 🛠 Key Concepts:
# 1️⃣ Matrices have rows and columns, indexed by `[row, column]`.  
# 2️⃣ Operations on matrices are vectorized for efficiency.  
# 3️⃣ Functions like `apply()` simplify aggregation and manipulation.  

# ===============================================
# 🔷 Part 1: Creating Matrices
# ===============================================

# --- 🛠 Example 1: Creating a matrix
# Use the `matrix()` function
mat <- matrix(
  data = 1:12,       # Data to fill the matrix
  nrow = 3,          # Number of rows
  ncol = 4,          # Number of columns
  byrow = TRUE       # Fill by rows (default is by columns)
)
print(mat)  # Output:
#      [,1] [,2] [,3] [,4]
# [1,]    1    2    3    4
# [2,]    5    6    7    8
# [3,]    9   10   11   12

# --- 🛠 Example 2: Combining vectors into a matrix
vec1 <- c(1, 2, 3)
vec2 <- c(4, 5, 6)
combined_mat <- cbind(vec1, vec2)  # Bind as columns
print(combined_mat)
#      vec1 vec2
# [1,]    1    4
# [2,]    2    5
# [3,]    3    6

# --- 🛠 Key Insight:
# - `rbind()` binds vectors as rows, while `cbind()` binds them as columns.

# ===============================================
# 🔷 Part 2: Accessing and Manipulating Matrices
# ===============================================

# --- 🛠 Example 3: Indexing elements
print(mat[2, 3])   # Access element in the 2nd row, 3rd column: [1] 7
print(mat[1, ])    # Access the entire 1st row: [1] 1 2 3 4
print(mat[, 2])    # Access the entire 2nd column: [1] 2 6 10

# --- 🛠 Example 4: Modifying elements
mat[3, 4] <- 99    # Set the element in the 3rd row, 4th column to 99
print(mat)

# --- 🛠 Example 5: Adding rows and columns
new_row <- c(13, 14, 15, 16)
new_mat <- rbind(mat, new_row)  # Add a new row
print(new_mat)

new_col <- c(17, 18, 19, 20)
new_mat <- cbind(new_mat, new_col)  # Add a new column
print(new_mat)

# --- 🛠 Key Insight:
# Matrix indexing uses `[row, column]`. Leaving a blank selects all rows or columns.

# ===============================================
# 🔷 Part 3: Aggregation and Filtering
# ===============================================

# --- 🛠 Example 6: Aggregating with `apply()`
# `apply()` applies a function across rows or columns
print(apply(mat, 1, sum))  # Sum of each row: [1] 10 26 127
print(apply(mat, 2, mean)) # Mean of each column: [1] 5 6 7 37.66667

# --- 🛠 Example 7: Logical filtering
print(mat[mat > 5])  # Extract all elements greater than 5: [1] 6 7 8 9 10 11 12 99

# --- 🛠 Example 8: Subset rows or columns based on conditions
subset_mat <- mat[apply(mat, 1, function(row) mean(row) > 6), ]
print(subset_mat)  # Rows where the mean is greater than 6

# --- 🛠 Key Insight:
# Use logical conditions and `apply()` to filter and summarize matrix data.

# ===============================================
# 🔷 Part 4: Mathematical Operations on Matrices
# ===============================================

# --- 🛠 Example 9: Basic arithmetic operations
mat1 <- matrix(1:4, nrow = 2)
mat2 <- matrix(5:8, nrow = 2)

# Element-wise operations
print(mat1 + mat2)  # Addition: [1]  6  8 10 12
print(mat1 * mat2)  # Multiplication: [1]  5 12 21 32

# Matrix multiplication
print(mat1 %*% t(mat2))  # Matrix product (dot product)

# --- 🛠 Key Insight:
# Use `%*%` for matrix multiplication and `t()` for transposing a matrix.

# ===============================================
# 🔷 Part 5: Practical Example
# ===============================================

# --- 🛠 Example 10: Analyze and summarize data
# Create a matrix of sales data
sales <- matrix(
  data = c(200, 300, 400, 150, 250, 350, 100, 200, 300),
  nrow = 3,
  byrow = TRUE
)
colnames(sales) <- c("Q1", "Q2", "Q3")
rownames(sales) <- c("Product A", "Product B", "Product C")
print(sales)

# Calculate total sales per product
total_sales <- apply(sales, 1, sum)
print(total_sales)

# Find the quarter with the highest sales for each product
highest_quarter <- apply(sales, 1, which.max)
print(highest_quarter)

# Filter products with total sales > 800
filtered_sales <- sales[total_sales > 800, ]
print(filtered_sales)

# ===============================================
# 🔵 Practice Exercises
# ===============================================

# --- 📝 Exercise 1: Matrix Creation and Indexing
# 1. Create a 4x4 matrix filled with numbers 1 to 16.
# 2. Extract the 2nd row and the 4th column.
# 3. Replace the value at (3,3) with 99.

# --- Solution:
exercise_mat <- matrix(1:16, nrow = 4)
print(exercise_mat[2, ])  # Second row
print(exercise_mat[, 4])  # Fourth column
exercise_mat[3, 3] <- 99
print(exercise_mat)

# --- 📝 Exercise 2: Aggregation and Filtering
# 1. Create a 3x3 matrix with random numbers from 1 to 10.
# 2. Find the row sums and column means.
# 3. Subset rows where the row sum > 15.

# --- Solution:
set.seed(123)  # Set seed for reproducibility
rand_mat <- matrix(sample(1:10, 9, replace = TRUE), nrow = 3)
print(apply(rand_mat, 1, sum))  # Row sums
print(apply(rand_mat, 2, mean))  # Column means
print(rand_mat[apply(rand_mat, 1, sum) > 15, ])

# ===============================================
# 🔵 Summary
# ===============================================

# 🟢 **Key Takeaways:**
# 1️⃣ Matrices are two-dimensional structures with rows and columns.  
# 2️⃣ Indexing uses `[row, column]` for specific elements or subsets.  
# 3️⃣ Use `apply()` for row/column-wise aggregation.  
# 4️⃣ Logical filtering and mathematical operations make matrix manipulation powerful.  

# --- End of Lecture --- 🚀