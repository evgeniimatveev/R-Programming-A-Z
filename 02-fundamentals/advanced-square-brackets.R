# ===============================================
# 📖 Lecture-Script: Advanced Usage of `[]` Brackets in R
# ===============================================

# --- 🔷 Introduction
# Subsetting is not only about accessing specific elements — 
# it is a powerful tool for filtering, manipulating, and analyzing data.
# This advanced script expands on the basics, exploring:
# 1️⃣ Combining indexing techniques.  
# 2️⃣ Working with `NA` values.  
# 3️⃣ Using named vectors.  
# 4️⃣ Subsetting with conditions and custom functions.  

# ===============================================
# 🔷 Part 1: Combining Indexing Techniques
# ===============================================

# --- 🛠 Example 1: Positive and Negative Indexing
# You cannot mix positive and negative indices in the same operation.
x <- c(144, 55122, 22, 777)
# print(x[c(1, -2)])  # Uncommenting this will raise an error: "only 0's may be mixed with negative subscripts"

# --- 🛠 Example 2: Mixing Ranges and Specific Indices
# Use `c()` to combine ranges and specific indices.
print(x[c(1:2, 4)])  # Combine range (1 to 2) and position 4: Output: [1] 144 55122 777

# --- 🛠 Key Insight:
# Use combinations of ranges, sequences, and specific positions to create flexible subsets.

# ===============================================
# 🔷 Part 2: Working with `NA` Values
# ===============================================

# --- 🛠 Example 3: Handling Missing Values in Vectors
# Create a vector with `NA` values
y <- c(1, 2, NA, 4, 5)
print(y)  # Output: [1] 1 2 NA 4 5

# --- Subset to exclude `NA` values
print(y[!is.na(y)])  # Output: [1] 1 2 4 5

# --- Check which elements are `NA`
print(is.na(y))  # Output: [1] FALSE FALSE TRUE FALSE FALSE

# --- 🛠 Key Insight:
# Use `is.na()` to identify or exclude missing values in a vector.

# ===============================================
# 🔷 Part 3: Subsetting Named Vectors
# ===============================================

# --- 🛠 Example 4: Using Names in Vectors
# Assign names to a vector
z <- c(a = 10, b = 20, c = 30, d = 40)
print(z)  # Output: a  b  c  d 
#         10 20 30 40

# --- Access elements by name
print(z["a"])  # Output: 10
print(z[c("b", "d")])  # Output: b  d 
#         20 40

# --- Subset excluding names
print(z[!names(z) %in% c("a", "c")])  # Exclude "a" and "c": Output: b  d 
#                       20 40

# --- 🛠 Key Insight:
# Named vectors are especially useful for referencing and subsetting when working with structured data.

# ===============================================
# 🔷 Part 4: Conditional Subsetting with Custom Functions
# ===============================================

# --- 🛠 Example 5: Subsetting with a Condition
# Create a numeric vector
nums <- c(5, 10, 15, 20, 25, 30)

# Subset elements greater than 15
print(nums[nums > 15])  # Output: [1] 20 25 30

# --- 🛠 Example 6: Subsetting with Custom Functions
# Use a custom function for more complex conditions
is_even <- function(x) x %% 2 == 0  # Function to check even numbers
print(nums[is_even(nums)])  # Output: [1] 10 20 30

# --- 🛠 Key Insight:
# Custom functions allow for advanced and reusable filtering logic.

# ===============================================
# 🔷 Part 5: Advanced Logical Subsetting
# ===============================================

# --- 🛠 Example 7: Combining Logical Conditions
# Logical AND (`&`) and OR (`|`) operators can combine conditions.
print(nums[nums > 10 & nums < 25])  # Elements between 10 and 25: Output: [1] 15 20

print(nums[nums %% 5 == 0 | nums > 25])  # Divisible by 5 OR greater than 25: Output: [1] 5 10 15 20 25 30

# --- 🛠 Example 8: Subsetting with `which()`
# The `which()` function returns the indices of TRUE values in a logical vector.
indices <- which(nums > 15)  # Get indices of elements > 15
print(nums[indices])  # Subset using those indices: Output: [1] 20 25 30

# --- 🛠 Key Insight:
# Logical subsetting is a cornerstone of data filtering, and combining conditions provides great flexibility.

# ===============================================
# 🔷 Part 6: Subsetting Data Frames (Bonus)
# ===============================================

# --- 🛠 Example 9: Accessing Rows and Columns in Data Frames
# Create a simple data frame
df <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David"),
  Age = c(25, 30, 35, 40),
  Score = c(85, 90, 88, 92)
)

print(df)

# Access specific rows and columns
print(df[1, ])  # First row: Output: Name Age Score
#         Alice  25    85
print(df[, 2])  # Second column (Age): Output: [1] 25 30 35 40
print(df[1:2, c("Name", "Score")])  # Rows 1-2, columns "Name" and "Score"

# --- 🛠 Key Insight:
# Subsetting with `[]` works for both rows and columns in data frames.

# ===============================================
# 🔵 Practice Exercises
# ===============================================

# --- 📝 Exercise 1: Handling `NA` Values
# Create a vector `v <- c(10, NA, 20, NA, 30, 40, NA)`.
# 1. Extract all non-NA values.
# 2. Find the positions of `NA` values.

# Solution:
v <- c(10, NA, 20, NA, 30, 40, NA)
print(v[!is.na(v)])  # Non-NA values: 10 20 30 40
print(which(is.na(v)))  # Positions of NA: 2 4 7

# --- 📝 Exercise 2: Named Vector Subsetting
# Create a named vector `grades <- c(Alice = 85, Bob = 90, Charlie = 88, David = 92)`.
# 1. Extract grades for "Alice" and "Charlie".
# 2. Exclude grades for "Bob".

# Solution:
grades <- c(Alice = 85, Bob = 90, Charlie = 88, David = 92)
print(grades[c("Alice", "Charlie")])  # Grades for Alice and Charlie
print(grades[!names(grades) %in% "Bob"])  # Exclude Bob's grade

# --- 📝 Exercise 3: Custom Function Subsetting
# Create a vector `nums <- c(1:20)`.
# 1. Extract all numbers divisible by 3.
# 2. Extract all even numbers greater than 10.

# Solution:
nums <- c(1:20)
print(nums[nums %% 3 == 0])  # Divisible by 3
print(nums[nums %% 2 == 0 & nums > 10])  # Even numbers > 10

# ===============================================
# 🔵 Summary
# ===============================================

# 🟢 Key Takeaways:
# 1️⃣ Combining subsetting techniques allows for maximum flexibility.  
# 2️⃣ Use `is.na()` to handle missing data.  
# 3️⃣ Named vectors are useful for referencing specific data.  
# 4️⃣ Logical and custom function subsetting are powerful for advanced filtering.  
# 5️⃣ Subsetting applies equally well to vectors, data frames, and more.

# --- End of Lecture --- 🚀