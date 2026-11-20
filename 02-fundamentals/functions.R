# ===============================================
# 📖 Lecture-Script: Functions in R
# ===============================================

# --- 🔷 Introduction
# Functions are the building blocks of programming in R.
# They help automate tasks, make code reusable, and reduce redundancy. 🚀
# In this lecture, we will learn:
# 1️⃣ What are functions in R?  
# 2️⃣ How to use built-in functions.  
# 3️⃣ Creating custom functions.  
# 4️⃣ Passing arguments and returning values.  
# 5️⃣ Practical examples.  

# ===============================================
# 🔷 Part 1: Using Built-In Functions
# ===============================================

# --- 🛠 Example 1: Commonly used built-in functions
# Generate a vector
?x <- c(10, 15, 20, 25, 30)

# Mathematical functions
print(sqrt(x))  # Square root: [1] 3.162278 3.872983 4.472136 5.000000 5.477226
print(log(x))   # Natural logarithm: [1] 2.302585 2.708


# Statistical functions
print(mean(x))  # Mean of x: [1] 20
print(sum(x))   # Sum of x: [1] 100
print(min(x))   # Minimum value: [1] 10
print(max(x))   # Maximum value: [1] 30

# --- 🛠 Example 2: Sequence and repetition functions
seq_vec <- seq(from = 1, to = 10, by = 2)  # Generate a sequence
print(seq_vec)  # Output: [1] 1 3 5 7 9

rep_vec <- rep(x, times = 2)  # Repeat each element of x twice
print(rep_vec)  # Output: [1] 10 15 20 25 30 10 15 20 25 30

# --- 🛠 Example 3: Logical and type-checking functions
print(is.numeric(x))  # Check if x is numeric: [1] TRUE
print(is.integer(x))  # Check if x is integer: [1] FALSE
print(is.character(x))  # Check if x is a character: [1] FALSE

# --- 🛠 Key Insight:
# Built-in functions are optimized for efficiency and simplify common tasks.

# ===============================================
# 🔷 Part 2: Creating Custom Functions
# ===============================================

# --- 🛠 Example 4: Basic structure of a function
# Syntax:
# my_function <- function(arg1, arg2, ...) {
#     body of the function
#     return(output)
# }

# Create a simple function to calculate the square of a number
square <- function(num) {
  return(num^2)
}

# Call the function
result <- square(4)
print(result)  # Output: [1] 16

# --- 🛠 Example 5: Function with multiple arguments
# Create a function to calculate the area of a rectangle
rectangle_area <- function(length, width) {
  area <- length * width
  return(area)
}

# Call the function
area_result <- rectangle_area(5, 3)
print(area_result)  # Output: [1] 15

# --- 🛠 Key Insight:
# Functions make your code modular and reusable.  

# ===============================================
# 🔷 Part 3: Functions with Default Arguments
# ===============================================

# --- 🛠 Example 6: Adding default values to arguments
# Create a function to calculate compound interest
compound_interest <- function(principal, rate = 0.05, time = 1) {
  return(principal * (1 + rate)^time)
}

# Call the function with and without default arguments
print(compound_interest(1000))  # Default rate and time: [1] 1050
print(compound_interest(1000, rate = 0.1, time = 2))  # [1] 1210

# --- 🛠 Key Insight:
# Default arguments allow for flexibility and reduce the need for repeated code.

# ===============================================
# 🔷 Part 4: Practical Use Cases
# ===============================================

# --- 🛠 Example 7: Function to classify numbers
classify_number <- function(num) {
  if (num > 0) {
    return("Positive")
  } else if (num < 0) {
    return("Negative")
  } else {
    return("Zero")
  }
}

# Test the function
print(classify_number(10))  # Output: "Positive"
print(classify_number(-5))  # Output: "Negative"
print(classify_number(0))   # Output: "Zero"

# --- 🛠 Example 8: Apply a custom function to a vector
numbers <- c(-2, 0, 5, -8, 10)
classified <- sapply(numbers, classify_number)  # Apply classify_number to each element
print(classified)  # Output: [1] "Negative" "Zero" "Positive" "Negative" "Positive"

# ===============================================
# 🔷 Part 5: Nested and Anonymous Functions
# ===============================================

# --- 🛠 Example 9: Nested functions
# Function to calculate hypotenuse using nested functions
hypotenuse <- function(a, b) {
  square <- function(x) { x^2 }  # Nested function
  return(sqrt(square(a) + square(b)))
}

# Test the function
print(hypotenuse(3, 4))  # Output: [1] 5

# --- 🛠 Example 10: Anonymous functions
# Anonymous functions are useful for short one-time operations
result <- sapply(c(1, 2, 3, 4), function(x) x^2)
print(result)  # Output: [1] 1 4 9 16

# ===============================================
# 🔵 Summary
# ===============================================

# 🟢 **Key Takeaways:**
# 1️⃣ Functions are essential for automating repetitive tasks.  
# 2️⃣ R provides a rich library of built-in functions for common operations.  
# 3️⃣ Custom functions make your code modular and reusable.  
# 4️⃣ Default arguments and anonymous functions add flexibility to your code.  
# 
# --- End of Lecture --- 🚀