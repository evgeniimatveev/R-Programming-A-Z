# ===============================================
# 📖 Lecture-Script: Understanding Vectors in R
# ===============================================

# --- 🔷 What is a Vector?
# A vector in R is a sequence of data elements of the same type.
# Vectors are the most basic data structure in R.
# Types of vectors:
# 1️⃣ Numeric
# 2️⃣ Integer
# 3️⃣ Character
# 4️⃣ Logical
# 5️⃣ Complex

# --- 🛠 How to Create a Vector:
# Use the `c()` function to combine elements into a vector.

# ===============================================
# 🔷 Part 1: Creating Numeric Vectors
# ===============================================

# Example 1: Creating a numeric vector
my_first_vector <- c(3.1441, 455.11, 64.414, 111.1111, 555.555, 1922)
print(my_first_vector)  # Output: [1] 3.1441 455.11 64.414 111.1111 555.555 1922

# Example 2: Check the type of the vector
typeof(my_first_vector)  # Output: "double"

# --- 🛠 Key Functions for Type Checking:
is.numeric(my_first_vector)  # Output: TRUE
is.integer(my_first_vector)  # Output: FALSE (not integer)
is.double(my_first_vector)   # Output: TRUE (all numeric vectors are double by default)

# Example 3: Creating an integer vector
V2 <- c(45L, 6896L, 5L, 555L, 333L, 0L, 777L)  # "L" indicates integer
print(V2)  # Output: [1] 45 6896 5 555 333 0 777

# Check the type of the integer vector
is.numeric(V2)  # Output: TRUE
is.integer(V2)  # Output: TRUE
is.double(V2)   # Output: FALSE

# ===============================================
# 🔷 Part 2: Character and Logical Vectors
# ===============================================

# Example 4: Creating a character vector
V3 <- c("a", "b23", "hello R", "R R R R", 7)  # Mixed elements
print(V3)  # Output: [1] "a" "b23" "hello R" "R R R R" "7"

# --- 🛠 Key Functions for Character Vectors:
is.character(V3)  # Output: TRUE
is.numeric(V3)    # Output: FALSE
is.integer(V3)    # Output: FALSE
is.double(V3)     # Output: FALSE

# Example 5: Creating a logical vector
logical_vector <- c(TRUE, FALSE, T, F)
print(logical_vector)  # Output: [1] TRUE FALSE TRUE FALSE

# ===============================================
# 🔷 Part 3: Generating Sequences
# ===============================================

# Example 6: Generate a sequence using `seq()`
seq_1 <- seq(1, 100, 5)  # Generate a sequence from 1 to 100 with a step of 5
print(seq_1)  # Output: [1] 1 6 11 16 ... 96

# Example 7: Generate a large sequence
z <- seq(2, 10000, 7)  # Sequence from 2 to 10,000 with a step of 7
print(head(z))  # Output: [1] 2 9 16 23 30 37 (first 6 elements)

# --- 🛠 Quick Access:
print(z[1:10])  # First 10 elements of the sequence
print(length(z))  # Total number of elements in `z`

# ===============================================
# 🔷 Part 4: Vector Operations
# ===============================================

# Example 8: Arithmetic with vectors
vector_a <- c(10, 20, 30)
vector_b <- c(5, 15, 25)

# Perform element-wise operations
print(vector_a + vector_b)  # Output: [1] 15 35 55
print(vector_a - vector_b)  # Output: [1] 5 5 5
print(vector_a * vector_b)  # Output: [1] 50 300 750
print(vector_a / vector_b)  # Output: [1] 2.0 1.333333 1.2

# Example 9: Logical operations with vectors
logical_result <- vector_a > 15  # Check if each element is greater than 15
print(logical_result)  # Output: [1] FALSE TRUE TRUE

# Example 10: Combining vectors
combined_vector <- c(vector_a, vector_b)  # Combine two vectors
print(combined_vector)  # Output: [1] 10 20 30 5 15 25

# ===============================================
# 🔷 Part 5: Subsetting Vectors
# ===============================================

# Example 11: Access elements by position
print(my_first_vector[2])  # Second element: Output: 455.11
print(my_first_vector[1:3])  # First three elements: Output: [1] 3.1441 455.11 64.414

# Example 12: Logical subsetting
positive_elements <- my_first_vector[my_first_vector > 100]
print(positive_elements)  # Output: [1] 455.11 111.1111 555.555 1922

# ===============================================
# 🔷 Part 6: Vector Recycling
# ===============================================

# Example 13: Recycling shorter vectors
short_vec <- c(1, 2)
long_vec <- c(10, 20, 30, 40)

# R recycles `short_vec` to match the length of `long_vec`
print(short_vec + long_vec)  # Output: [1] 11 22 31 42

# ===============================================
# 🟢 Practice Exercises
# ===============================================

# --- 📝 Exercise 1: Sequence Manipulations
# Generate a sequence from 50 to 200 with a step of 10 and:
# 1. Extract the first 5 elements.
# 2. Find how many numbers are greater than 100.

# Solution:
seq_ex <- seq(50, 200, 10)
print(seq_ex[1:5])  # First 5 elements
print(sum(seq_ex > 100))  # Count of elements > 100

# --- 📝 Exercise 2: Vector Arithmetic
# Create two numeric vectors:
# - `vec1`: [5, 10, 15, 20]
# - `vec2`: [2, 4, 6]
# Perform element-wise addition and multiplication. What happens?

# Solution:
vec1 <- c(5, 10, 15, 20)
vec2 <- c(2, 4, 6)
print(vec1 + vec2)  # Output: Recycling occurs
print(vec1 * vec2)  # Output: Recycling occurs

# --- 📝 Exercise 3: Subset Logical Values
# Create a numeric vector `nums` from 1 to 20. Find:
# 1. All even numbers.
# 2. All numbers greater than 10.

# Solution:
nums <- 1:20
print(nums[nums %% 2 == 0])  # Even numbers
print(nums[nums > 10])  # Numbers > 10

# ===============================================
# 🔵 Summary
# ===============================================

# 1️⃣ **What is a Vector?**
#    - A sequence of elements of the same type.
#    - Most common data structure in R.

# 2️⃣ **Key Functions for Vectors:**
#    - `c()`: Create vectors.
#    - `seq()`: Generate sequences.
#    - `length()`: Find the length of a vector.
#    - Subsetting: Use `[ ]` to extract elements.

# 3️⃣ **Operations on Vectors:**
#    - Arithmetic: Addition, subtraction, multiplication, division.
#    - Logical: Element-wise comparison.

# --- End of Lecture ---