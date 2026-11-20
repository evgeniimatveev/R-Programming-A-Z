# ===============================================
# 📖 Lecture: Workspace Management with `rm()` in R
# ===============================================

# --- 🔷 What is `rm()`?
# The `rm()` function is used to remove objects (e.g., variables, functions)
# from the current R session. This is especially useful when testing or 
# starting fresh with a clean workspace.

# --- 🛠 Syntax:
# rm(object_name)  # Removes a specific object
# rm(list = ls())  # Removes all objects from the workspace

# ===============================================
# 🔷 Example 1: Removing a Single Variable
# ===============================================

# Create some variables
a <- 10
b <- 20
c <- 30

# Print the variables
print(a)  # Expected Output: 10
print(b)  # Expected Output: 20

# Use `rm()` to remove variable `a`
rm(b)

# Try printing `a` (this will cause an error because `a` no longer exists)
# print(a)  # Uncomment this line to see the error: "object 'a' not found"

# ===============================================
# 🔷 Example 2: Removing Multiple Variables
# ===============================================

# Create additional variables
x <- "Hello"
y <- "World"
z <- 3.14

# Use `rm()` to remove multiple variables
rm(b, c)  # Removes `b` and `c`

# Check which variables still exist
ls()  # Lists all variables currently in the workspace

# ===============================================
# 🔷 Example 3: Clearing the Entire Workspace
# ===============================================

# Create a few variables
var1 <- 100
var2 <- 200
var3 <- 300

# Check the current variables
ls()  # Lists all variables in the workspace

# Use `rm(list = ls())` to clear all variables
rm(list = ls())

# Check the workspace again
ls()  # Should return an empty character vector, meaning all variables are removed

# --- 📝 Notes:
# - Always use `rm(list = ls())` with caution to avoid accidentally deleting important objects.
# - Useful when starting a new analysis or testing fresh code.

# ===============================================
# 🔷 Example 4: Conditional Cleanup for Testing
# ===============================================

# Create a variable for testing
test_var <- 42
print(test_var)  # Expected Output: 42

# Simulate some testing
if (exists("test_var")) {  # Check if the variable exists
  print("test_var exists. Removing it now...")
  rm(test_var)  # Remove the variable
} else {
  print("test_var does not exist.")
}

# Try accessing the variable again
# print(test_var)  # Uncomment to see the error: "object 'test_var' not found"

# ===============================================
# 🔷 Best Practices for Using `rm()` in Testing
# ===============================================

# 1️⃣ **Remove specific variables only:**
#    Use `rm(variable_name)` to delete only the variables you no longer need.
#    Example: `rm(temp_result, debug_value)`

# 2️⃣ **Clear the workspace before testing:**
#    To avoid interference from leftover variables, use `rm(list = ls())` to start fresh.

# 3️⃣ **Avoid accidental deletions:**
#    Double-check your code before using `rm(list = ls())`. Save important objects to files if needed.

# ===============================================
# 🟢 Practice Exercises
# ===============================================

# --- 📝 Exercise 1: Removing Variables
# 1. Create three variables: `x`, `y`, `z`.
# 2. Use `rm()` to remove `y`.
# 3. Verify that `y` has been removed but `x` and `z` still exist.

# Solution:
x <- 5
y <- 10
z <- 15
rm(y)  # Remove `y`
ls()  # Check which variables remain

# --- 📝 Exercise 2: Conditional Deletion
# 1. Create a variable `temp_data`.
# 2. Check if it exists using `exists()`. If it does, remove it.

# Solution:
temp_data <- "Some temporary data"

if (exists("temp_data")) {
  print("temp_data exists. Removing it...")
  rm(temp_data)
}

ls()  # Verify that `temp_data` has been removed

# --- 📝 Exercise 3: Resetting the Workspace
# 1. Create three variables: `a`, `b`, `c`.
# 2. Use `rm(list = ls())` to clear the entire workspace.
# 3. Verify that all variables have been removed.

# Solution:
a <- 1
b <- 2
c <- 3
rm(list = ls())  # Clear all variables
ls()  # Should return an empty character vector

# ===============================================
# 🔵 Summary
# ===============================================

# 1️⃣ **What is `rm()`?**
#    - A function to remove objects from the current R session.

# 2️⃣ **Key Use Cases:**
#    - Remove unused variables to free up memory.
#    - Clear the workspace before starting new analysis or testing code.

# 3️⃣ **Functions to Use with `rm()`:**
#    - `ls()`: Lists all objects in the workspace.
#    - `exists()`: Checks if a variable exists.

# 4️⃣ **Tips:**
#    - Use `rm(variable_name)` to delete specific variables.
#    - Use `rm(list = ls())` cautiously to clear everything in the workspace.

# --- End of Lecture ---