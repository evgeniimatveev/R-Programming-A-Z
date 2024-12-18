# ===============================================
# 📖 Lecture-Script: Advanced Matrix Operations in R
# ===============================================

# --- 🔷 Introduction
# Matrices in R are foundational for handling structured numerical data.  
# This advanced script focuses on:
# 1️⃣ Indexing techniques.  
# 2️⃣ Combining rows and columns with `rbind()` and `cbind()`.  
# 3️⃣ Practical examples to reinforce concepts.  
# 4️⃣ Applying operations and logical filters on matrices.

# ===============================================
# 🔷 Part 1: Creating Matrices and Indexing
# ===============================================

# --- 🛠 Example 1: Creating a matrix
my_data <- 1:20
A <- matrix(my_data, nrow = 4, ncol = 5)  # Fill by columns (default)
print(A)  # Output:
#      [,1] [,2] [,3] [,4] [,5]
# [1,]    1    5    9    13   17
# [2,]    2    6   10    14   18
# [3,]    3    7   11    15   19
# [4,]    4    8   12    16   20

# --- 🛠 Example 2: Creating a matrix with `byrow`
B <- matrix(my_data, nrow = 4, ncol = 5, byrow = TRUE)  # Fill by rows
print(B)  # Output:
#      [,1] [,2] [,3] [,4] [,5]
# [1,]    1    2    3    4    5
# [2,]    6    7    8    9   10
# [3,]   11   12   13   14   15
# [4,]   16   17   18   19   20

# --- 🛠 Key Insight:
# Use `byrow = TRUE` to fill matrices by rows instead of the default column order.

# --- 🛠 Example 3: Indexing elements
print(A[2, 3])  # Access element in 2nd row, 3rd column: [1] 10
print(A[4, 2])  # Access element in 4th row, 2nd column: [1] 8
print(B[4, 4])  # Access element in 4th row, 4th column: [1] 19

# --- 🛠 Example 4: Slicing rows and columns
print(A[2, ])  # Entire 2nd row: [1]  2  6 10 14 18
print(A[, 3])  # Entire 3rd column: [1]  9 10 11 12
print(A[1:2, 3:5])  # Subset rows 1-2, columns 3-5

# --- 🛠 Key Insight:
# Use `[row, column]` for precise element access. Leaving blank selects all rows/columns.

# ===============================================
# 🔷 Part 2: Combining Rows and Columns
# ===============================================

# --- 🛠 Example 5: Combining rows with `rbind()`
r1 <- c("I", "am", "Happy")
r2 <- c("What", "a", "Day")
r3 <- c(1, 2, 3)
C <- rbind(r1, r2, r3)  # Combine vectors as rows
print(C)  # Output:
#      [,1]    [,2]    [,3]   
# r1   "I"     "am"    "Happy"
# r2   "What"  "a"     "Day"  
# r3   "1"     "2"     "3"    

# --- 🛠 Example 6: Combining columns with `cbind()`
c1 <- 1:5
c2 <- -1:-5
D <- cbind(c1, c2)  # Combine vectors as columns
print(D)  # Output:
#      c1  c2
# [1,]  1  -1
# [2,]  2  -2
# [3,]  3  -3
# [4,]  4  -4
# [5,]  5  -5

# --- 🛠 Key Insight:
# Use `rbind()` to add rows and `cbind()` to add columns. 

# ===============================================
# 🔷 Part 3: Matrix Operations and Logical Filters
# ===============================================

# --- 🛠 Example 7: Applying mathematical operations
print(A * 2)  # Multiply each element by 2
print(A + B)  # Element-wise addition of two matrices

# --- 🛠 Example 8: Logical filtering
print(A[A > 10])  # Extract elements greater than 10: [1] 11 12 13 14 15 16 17 18 19 20
filtered_A <- A[A %% 2 == 0]  # Extract even numbers
print(filtered_A)  # Output: [1]  2  6 10 14 18  4  8 12 16 20

# ===============================================
# 🔷 Part 4: Practical Example with Basketball Data
# ===============================================

# --- 🛠 Example 9: Using matrices for basketball stats
# Players and seasons data
Players <- c("KobeBryant", "LeBronJames", "KevinDurant")
Seasons <- c("2005", "2006", "2007", "2008", "2009")

# Example of matrix: Field Goals
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

# --- 🛠 Example 10: Aggregation and comparison
print(rowSums(FieldGoals))  # Total Field Goals per player
print(colMeans(FieldGoals))  # Average Field Goals per season

# --- 🛠 Example 11: Subsetting with logical filters
high_scorers <- FieldGoals[rowSums(FieldGoals) > 3000, ]
print(high_scorers)  # Players with more than 3000 total Field Goals

# ===============================================
# 🔵 Practice Exercises
# ===============================================

# --- 📝 Exercise 1: Matrix Indexing
# 1. Create a 5x5 matrix using numbers 1 to 25.
# 2. Extract the 3rd row and 4th column.
# 3. Replace the value at (5,5) with 99.

# --- Solution:
matrix_5x5 <- matrix(1:25, nrow = 5)
print(matrix_5x5[3, ])  # Third row
print(matrix_5x5[, 4])  # Fourth column
matrix_5x5[5, 5] <- 99
print(matrix_5x5)

# --- 📝 Exercise 2: Logical Filtering
# Create a 4x4 matrix with random numbers from 1 to 100.
# 1. Extract all values greater than 50.
# 2. Subset rows where the row sum > 150.

# --- Solution:
set.seed(42)
rand_matrix <- matrix(sample(1:100, 16), nrow = 4)
print(rand_matrix[rand_matrix > 50])  # Values > 50
print(rand_matrix[apply(rand_matrix, 1, sum) > 150, ])  # Rows with sum > 150

# ===============================================
# 🔵 Summary
# ===============================================

# 🟢 **Key Takeaways:**
# 1️⃣ Matrices are ideal for numerical data with rows and columns.  
# 2️⃣ Indexing uses `[row, column]` and supports slicing/subsetting.  
# 3️⃣ Combine rows with `rbind()` and columns with `cbind()`.  
# 4️⃣ Use logical filters and operations to extract meaningful insights.  

# --- End of Lecture --- 🚀