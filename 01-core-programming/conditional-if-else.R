
# - - - - -2 - - - - -1 - - - - 0 - - - - 1 - - - - 2
   
# ===============================================
# 📖 Lecture: Conditional Statements in R
# ===============================================

# --- 🔷 What are Conditional Statements?
# Conditional statements allow you to execute different blocks of code
# based on whether a condition is `TRUE` or `FALSE`.

# --- 🛠 Syntax of `if`, `else if`, and `else`:
# if (condition) {
#   # Code to execute if condition is TRUE
# } else if (another_condition) {
#   # Code to execute if the first condition is FALSE 
#   # but this condition is TRUE
# } else {
#   # Code to execute if all conditions are FALSE
# }

# ===============================================
# 🔷 Example 1: Basic `if` Statement
# ===============================================

x <- 5  # Define a variable

if (x > 0) {  # Check if x is greater than 0
  print("x is positive")  # This block runs if the condition is TRUE
}

# --- 📝 Notes:
# - The code inside the `if` block is only executed if the condition is `TRUE`.
# - If the condition is `FALSE`, nothing happens.

# ===============================================
# 🔷 Example 2: Adding `else` for Two Conditions
# ===============================================

x <- -3  # Define a variable

if (x > 0) {  # Check if x is greater than 0
  print("x is positive")
} else {  # Executes if the `if` condition is FALSE
  print("x is negative or zero")
}

# --- 📝 Notes:
# - Use `else` for a fallback block of code if the `if` condition fails.

# ===============================================
# 🔷 Example 3: Using `else if` for Multiple Conditions
# ===============================================

x <- 0  # Define a variable

if (x > 0) {
  print("x is positive")
} else if (x == 0) {
  print("x is zero")
} else {
  print("x is negative")
}

# --- 📝 Notes:
# - `else if` allows you to check additional conditions if the first `if` fails.
# - The `else` block is optional and executes if all previous conditions fail.

# ===============================================
# 🔷 Example 4: Random Number and Multiple Conditions
# ===============================================

# Generate a random number from a normal distribution
x <- rnorm(1)  # Random value from a normal distribution

# Classify the value into categories
if (x > 1) {
  answer <- "Greater than one"
} else if (x >= -1) {
  answer <- "Between -1 and 1"
} else {
  answer <- "Less than -1"
}

# Print the result
print(paste("x is:", x))
print(paste("Category:", answer))

# --- 📝 Notes:
# - `rnorm(1)` generates a random number, making the program dynamic.
# - This example demonstrates chained `else if` conditions for classification.

# ===============================================
# 🔷 Example 5: Nested `if` Statements
# ===============================================

x <- 15  # Define a variable

if (x > 10) {
  if (x %% 2 == 0) {  # Check if x is even
    print("x is greater than 10 and even")
  } else {
    print("x is greater than 10 and odd")
  }
} else {
  print("x is 10 or less")
}

# --- 📝 Notes:
# - Nested `if` statements are useful for checking multiple levels of conditions.
# - Avoid overusing nested `if` statements as they can make the code harder to read.

# ===============================================
# 🔷 Example 6: Vectorized Conditional Statements
# ===============================================

# Define a vector of numbers
numbers <- c(-2, 0, 3, 5, -7)

# Use `ifelse` for element-wise conditions
categories <- ifelse(numbers > 0, "Positive", "Non-positive")
print(categories)  # Classifies each number as "Positive" or "Non-positive"

# --- 📝 Notes:
# - Use `ifelse()` for vectors or data frames where element-wise conditions are needed.

# ===============================================
# 🔷 Advanced Example: Grading System
# ===============================================

# Define a student's score
score <- 85  # Modify this value for testing

# Assign a grade based on the score
if (score >= 90) {
  grade <- "A"
} else if (score >= 80) {
  grade <- "B"
} else if (score >= 70) {
  grade <- "C"
} else if (score >= 60) {
  grade <- "D"
} else {
  grade <- "F"
}

# Print the grade
print(paste("The grade is:", grade))

# ===============================================
# 🟢 Practice Exercises
# ===============================================

# --- 📝 Exercise 1: Even or Odd
# Write an `if-else` statement to check if a number is even or odd.

# Solution:
number <- 7  # Change this to test
if (number %% 2 == 0) {
  print("The number is even")
} else {
  print("The number is odd")
}

# --- 📝 Exercise 2: Temperature Classification
# Write an `if-else if-else` statement to classify temperature:
# - "Cold" if below 0
# - "Mild" if between 0 and 20
# - "Hot" if above 20

# Solution:
temperature <- 15  # Modify this value for testing
if (temperature < 0) {
  print("Cold")
} else if (temperature <= 20) {
  print("Mild")
} else {
  print("Hot")
}

# --- 📝 Exercise 3: Find the Largest of Three Numbers
# Write a nested `if` statement to find the largest of three numbers.

# Solution:
a <- 12
b <- 7
c <- 25

if (a > b) {
  if (a > c) {
    print(paste("Largest number is:", a))
  } else {
    print(paste("Largest number is:", c))
  }
} else {
  if (b > c) {
    print(paste("Largest number is:", b))
  } else {
    print(paste("Largest number is:", c))
  }
}

# --- 📝 Exercise 4: Vectorized Grading
# Write a vectorized version of the grading system:
# Assign grades ("A", "B", "C", "D", "F") for a vector of scores.

# Solution:
scores <- c(92, 85, 74, 60, 45)  # Vector of scores
grades <- ifelse(scores >= 90, "A",
                 ifelse(scores >= 80, "B",
                        ifelse(scores >= 70, "C",
                               ifelse(scores >= 60, "D", "F"))))

print(grades)  # Expected Output: "A" "B" "C" "D" "F"

# ===============================================
# 🔵 Summary
# ===============================================

# 1️⃣ **`if`, `else if`, `else`:**
#    - Use `if` for the first condition.
#    - Use `else if` for additional conditions.
#    - Use `else` as a fallback if all conditions fail.

# 2️⃣ **Tips:**
#    - Avoid too many nested `if` statements; consider alternative logic or functions.
#    - Use `ifelse()` for vectorized operations.

# 3️⃣ **Applications:**
#    - Classification problems (e.g., categorizing data).
#    - Decision-making in scripts or functions.

# --- End of Lecture ---

