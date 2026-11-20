# ===============================================
# 📖 Lecture-Script: Using the `[]` Brackets in R
# ===============================================

# --- 🔷 Introduction to Subsetting in R
# Subsetting in R is a key operation for accessing specific elements 
# in vectors, matrices, and other data structures.
# The `[]` operator allows us to:
# 1️⃣ Access individual elements.  
# 2️⃣ Access multiple elements.  
# 3️⃣ Exclude elements using negative indexing.  
# 4️⃣ Use logical conditions for filtering.  
# Let’s explore these functionalities step-by-step. 🚀

# ===============================================
# 🔷 Part 1: Accessing Individual Elements
# ===============================================

# --- 🛠 Example 1: Create a numeric vector
# Using the `c()` function to combine multiple elements into a vector.
x <- c(144, 55122, 22, 777)  # A numeric vector
print(x)  # Output: [1] 144 55122 22 777

# --- 🛠 Example 2: Accessing elements by position
# To access an element, use the syntax: `vector[index]`
print(x[1])  # Access the 1st element: Output: 144
print(x[4])  # Access the 4th element: Output: 777

# --- 🛠 Key Insight:
# R uses **1-based indexing** (unlike many other programming languages like Python, which use 0-based indexing).  
# This means the first element is at position `1`, the second at `2`, and so on.

# ===============================================
# 🔷 Part 2: Accessing Multiple Elements
# ===============================================

# --- 🛠 Example 3: Using ranges to access multiple elements
# Use the `:` operator to specify a range of indices.
print(x[1:3])  # Access elements 1 through 3: Output: [1] 144 55122 22

# --- 🛠 Example 4: Accessing non-sequential elements
# Use the `c()` function to specify individual positions.
print(x[c(1, 3)])  # Access 1st and 3rd elements: Output: [1] 144 22

# --- 🛠 Example 5: Using `seq()` for dynamic subsetting
# The `seq()` function generates a sequence of indices.
print(x[seq(1, 4, 2)])  # Access every 2nd element from positions 1 to 4: Output: [1] 144 22

# --- 🛠 Key Insight:
# Subsetting with multiple indices allows flexible access to elements,
# whether consecutive or non-consecutive.

# ===============================================
# 🔷 Part 3: Negative Indexing (Excluding Elements)
# ===============================================

# --- 🛠 Example 6: Excluding elements by position
# Use negative numbers to exclude specific positions.
print(x[-2])  # Exclude the 2nd element: Output: [1] 144 22 777

# --- 🛠 Example 7: Exclude multiple elements
print(x[-c(1, 4)])  # Exclude the 1st and 4th elements: Output: [1] 55122 22

# --- 🛠 Key Insight:
# Negative indexing excludes elements, making it useful for removing unwanted data.  
# Note: Negative and positive indexing **cannot** be mixed in the same operation. 🛑

# ===============================================
# 🔷 Part 4: Logical Indexing
# ===============================================

# --- 🛠 Example 8: Using logical conditions for subsetting
# Logical indexing selects elements that satisfy a condition.
positive_elements <- x[x > 100]  # Elements greater than 100
print(positive_elements)  # Output: [1] 144 55122 777

# --- 🛠 Example 9: Logical negation with `!`
# Use `!` to reverse the condition and exclude specific elements.
non_large_elements <- x[!(x > 1000)]  # Exclude elements > 1000
print(non_large_elements)  # Output: [1] 144 22 777

# --- 🛠 Key Insight:
# Logical indexing is incredibly powerful for filtering data based on conditions.

# ===============================================
# 🔷 Part 5: Accessing Character Vectors
# ===============================================

# --- 🛠 Example 10: Create a character vector
# Character vectors store text values.
w <- c("a", "b", "c", "d", "e")  # A simple character vector
print(w)  # Output: [1] "a" "b" "c" "d" "e"

# --- 🛠 Example 11: Access single and multiple elements
print(w[3])  # Access the 3rd element: Output: "c"
print(w[c(1, 5)])  # Access the 1st and 5th elements: Output: [1] "a" "e"

# --- 🛠 Example 12: Exclude elements
print(w[-3])  # Exclude the 3rd element: Output: [1] "a" "b" "d" "e"

# --- 🛠 Key Insight:
# Subsetting with character vectors works just like numeric vectors.

# ===============================================
# 🔷 Practice Exercises
# ===============================================

# --- 📝 Exercise 1: Subsetting a Numeric Vector
# Create a numeric vector `vec <- c(10, 20, 30, 40, 50)`.
# 1. Extract the first 3 elements.
# 2. Exclude the 2nd and 4th elements.
# 3. Find all elements greater than 25.

# Solution:
vec <- c(10, 20, 30, 40, 50)
print(vec[1:3])  # Output: [1] 10 20 30
print(vec[-c(2, 4)])  # Output: [1] 10 30 50
print(vec[vec > 25])  # Output: [1] 30 40 50

# --- 📝 Exercise 2: Subsetting a Character Vector
# Create a character vector `chars <- c("apple", "banana", "cherry", "date", "elderberry")`.
# 1. Extract the 2nd and 4th elements.
# 2. Exclude the first element.
# 3. Find all elements containing the letter "a".

# Solution:
chars <- c("apple", "banana", "cherry", "date", "elderberry")
print(chars[c(2, 4)])  # Output: [1] "banana" "date"
print(chars[-1])  # Output: [1] "banana" "cherry" "date" "elderberry"
print(chars[grep("a", chars)])  # Output: [1] "apple" "banana" "date"

# ===============================================
# 🔵 Summary
# ===============================================

# 🟢 **Key Points:**
# 1️⃣ Subsetting in R is performed using `[]`.  
# 2️⃣ Use positive indexing to include, negative indexing to exclude elements.  
# 3️⃣ Logical indexing filters elements based on conditions.  
# 4️⃣ Subsetting works with both numeric and character vectors.  

# 🟢 **Key Functions:**
# - `c()`: Combine elements into a vector.
# - `seq()`: Create sequences of numbers for indexing.
# - `grep()`: Find elements matching a pattern in character vectors.

# --- End of Lecture --- 🚀