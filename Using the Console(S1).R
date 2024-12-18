# ===============================================
# 📖 Lecture: Using the Console in RStudio
# ===============================================

# --- 🔷 What is the Console?
# The console in RStudio is where you can:
# 1️⃣ Execute R commands interactively.
# 2️⃣ Test code snippets before saving them in a script.
# 3️⃣ See immediate results for operations, assignments, and functions.

# --- 🛠 Key Features of the Console:
# - You can type commands directly into the console and press Enter to execute.
# - Results of operations or functions are displayed immediately.
# - Use the "Up Arrow" key to retrieve previous commands.

# ===============================================
# 🔷 Example 1: Assigning Variables in the Console
# ===============================================

# Assign a value to a variable
x <- 5  # Assign the value 5 to the variable x.
x  # Print the value of x in the console. Expected Output: 5

# Assign another value to a variable
y <- 4  # Assign the value 4 to the variable y.
y  # Print the value of y. Expected Output: 4

# Perform arithmetic operations in the console
x + y  # Add x and y (5 + 4). Expected Output: 9
x * y  # Multiply x and y (5 * 4). Expected Output: 20

# --- 📝 Notes:
# - Variables are automatically displayed in the Environment tab (top right).
# - You can click on variables in the Environment tab to inspect their values.

# ===============================================
# 🔷 Example 2: Running Commands Line by Line
# ===============================================

# Run these commands one by one in the console:
1 + 1  # Adds 1 and 1. Expected Output: 2
10 / 2  # Divides 10 by 2. Expected Output: 5
sqrt(16)  # Computes the square root of 16. Expected Output: 4

# --- 📝 Notes:
# - The console is great for quick calculations and testing ideas.
# - If you make a mistake, use the "Up Arrow" key to edit the previous command.

# ===============================================
# 🔷 Example 3: Printing Messages
# ===============================================

# Use the print() function to display text or values
print("Hello, world!")  # Prints the message "Hello, world!".
print(x + y)  # Prints the result of x + y (9).

# --- 📝 Notes:
# - The `print()` function is useful for debugging and displaying output.
# - You can combine text and variables using the `paste()` function.

# Example:
greeting <- "The sum of x and y is"
result <- x + y
message <- paste(greeting, result)  # Combine the text and result
print(message)  # Expected Output: "The sum of x and y is 9"

# ===============================================
# 🔷 Example 4: Clearing the Console
# ===============================================

# --- 🛠 How to clear the console:
# - In RStudio, press `Ctrl + L` (Windows) or `Cmd + L` (Mac) to clear the console.
# - This does not delete variables or objects in the Environment; it just clears the display.

# ===============================================
# 🔷 Practical Tips for Using the Console
# ===============================================

# 🔹 Tip 1: Experiment with commands
#    Use the console to test ideas or troubleshoot small sections of code.
#    Example: `5 * 2`, `log(100)`, `1:10`

# 🔹 Tip 2: Avoid retyping commands
#    Use the "Up Arrow" key to retrieve and edit previous commands.

# 🔹 Tip 3: Use the console for quick calculations
#    Perform arithmetic, call functions, or inspect variables instantly.

# ===============================================
# 🟢 Practice Exercises
# ===============================================

# --- 📝 Exercise 1: Basic Arithmetic
# Run these commands in the console and note the results:
# 1. 25 * 4
# 2. sqrt(64)
# 3. 100 / 25
# 4. 15 %% 4  # This calculates the remainder when 15 is divided by 4.

# --- 📝 Exercise 2: Assign Variables and Perform Operations
# 1. Assign the value 20 to variable `a` and 30 to variable `b`.
# 2. Compute the sum, difference, and product of `a` and `b`.
# 3. Print the results.

# Solution:
a <- 20
b <- 30
sum_ab <- a + b
diff_ab <- a - b
prod_ab <- a * b

# Print the results
print(sum_ab)  # Expected: 50
print(diff_ab)  # Expected: -10
print(prod_ab)  # Expected: 600

# --- 📝 Exercise 3: Create and Print a Message
# 1. Assign your first name to a variable `first_name`.
# 2. Assign your age to a variable `age`.
# 3. Combine these variables into a message: "My name is [first_name] and I am [age] years old."
# 4. Print the message.

# Solution:
first_name <- "Tony"
age <- 35
intro_message <- paste("My name is", first_name, "and I am", age, "years old.")
print(intro_message)  # Expected: "My name is Tony and I am 35 years old."

# ===============================================
# 🔵 Summary
# ===============================================

# 1️⃣ **What is the Console?**
#    - The console is where you can interactively execute R commands and see immediate results.
#    - It's useful for testing, calculations, and debugging.

# 2️⃣ **Key Operations in the Console:**
#    - Assign values to variables (e.g., `x <- 5`).
#    - Perform arithmetic (e.g., `x + y`).
#    - Use functions like `sqrt()` or `print()` to display results.

# 3️⃣ **Practical Tips:**
#    - Use `Ctrl + L` (or `Cmd + L` on Mac) to clear the console.
#    - Use the "Up Arrow" key to retrieve previous commands.
#    - Combine text and variables with `paste()` for custom messages.

# --- End of Lecture ---
