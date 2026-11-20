# ===============================================
# 📖 Lecture: Loops in R — `while` and `for`
# ===============================================

# --- 🔷 What are Loops?
# Loops allow you to repeat a block of code multiple times.
# In R, two common loops are:
# 1️⃣ `while` — Executes the code as long as a condition is TRUE.
# 2️⃣ `for` — Iterates over a sequence or a vector of elements.

# ===============================================
# 🔷 Part 1: `while` Loops
# ===============================================

# --- 🛠 Syntax:
# while (condition) {
#   # Code to execute
# }

# --- 🟢 Example 1: Counting from 1 to 10
counter <- 1  # Initialize the counter

while (counter <= 10) {  # Loop until counter is greater than 10
  print(paste("Counter value is:", counter))  # Print the current value of the counter
  counter <- counter + 1  # Increment the counter
}

# --- 📝 Notes:
# - The `condition` is checked **before** each iteration.
# - If the condition is `FALSE`, the loop stops.

# --- 🟢 Example 2: Summing Numbers from 1 to 10
counter <- 1  # Reset the counter
sum_value <- 0  # Initialize the sum

while (counter <= 10) {
  sum_value <- sum_value + counter  # Add the current counter value to the sum
  print(paste("After adding", counter, "sum is:", sum_value))  # Show progress
  counter <- counter + 1  # Increment the counter
}

print(paste("Final sum is:", sum_value))  # Print the final sum

# --- 🟢 Example 3: Find the Smallest N Where Sum > 100
counter <- 1  # Reset the counter
sum_value <- 0  # Reset the sum

while (sum_value <= 100) {
  sum_value <- sum_value + counter
  counter <- counter + 1
}

print(paste("The smallest N is:", counter - 1))  # Subtract 1 because the loop overshoots
print(paste("The final sum is:", sum_value))

# ===============================================
# 🔷 Part 2: `for` Loops
# ===============================================

# --- 🛠 Syntax:
# for (variable in sequence) {
#   # Code to execute
# }

# --- 🟢 Example 1: Printing Numbers from 1 to 10
for (i in 1:10) {  # Iterate over the sequence 1, 2, ..., 10
  print(paste("Current value of i is:", i))
}

# --- 🟢 Example 2: Calculate the Square of Numbers
for (i in 1:5) {  # Iterate over numbers from 1 to 5
  print(paste("Square of", i, "is:", i^2))  # i^2 calculates the square of i
}

# --- 🟢 Example 3: Looping Over a Character Vector
fruits <- c("Apple", "Banana", "Cherry", "Date")  # Define a character vector

for (fruit in fruits) {  # Iterate over each element in the vector
  print(paste("I like", fruit))
}

# --- 🟢 Example 4: Nested Loops
# A nested loop is when one loop runs inside another loop.
for (i in 1:3) {
  for (j in 1:2) {
    print(paste("Outer loop:", i, "Inner loop:", j))
  }
}

# ===============================================
# 🔷 Differences Between `while` and `for`
# ===============================================

# 1️⃣ `while`:  
#    - Use when the **number of iterations is unknown**.  
#    - The loop continues until the condition becomes `FALSE`.

# 2️⃣ `for`:  
#    - Use when the **number of iterations is known**, or you need to iterate over a sequence/vector.

# --- 📝 Key Notes:
# - `while` loops require you to manually update variables (e.g., `counter <- counter + 1`).
# - `for` loops automatically iterate over each element in the sequence/vector.

# ===============================================
# 🟢 Practice Exercises
# ===============================================

# --- 📝 Exercise 1: Print Even Numbers from 1 to 20
# Use a `for` loop to print all even numbers from 1 to 20.

# Solution:
for (i in 1:20) {
  if (i %% 2 == 0) {  # Check if i is even (remainder is 0)
    print(paste(i, "is even"))
  }
}

# --- 📝 Exercise 2: Sum of Odd Numbers (Using `while`)
# Use a `while` loop to calculate the sum of all odd numbers from 1 to 15.

# Solution:
counter <- 1
sum_odd <- 0

while (counter <= 15) {
  if (counter %% 2 == 1) {  # Check if the number is odd
    sum_odd <- sum_odd + counter
  }
  counter <- counter + 1
}

print(paste("The sum of odd numbers is:", sum_odd))

# --- 📝 Exercise 3: Nested Loops
# Write a nested loop that creates a multiplication table (1 to 5).

# Solution:
for (i in 1:5) {
  for (j in 1:5) {
    print(paste(i, "x", j, "=", i * j))
  }
}

# ===============================================
# 🔵 Summary
# ===============================================

# 1️⃣ **`while` Loop**:
#    - Use when the number of iterations depends on a condition.
#    - Examples: Calculating sums, waiting for a condition to be `FALSE`.

# 2️⃣ **`for` Loop**:
#    - Use when iterating over a known sequence or vector.
#    - Examples: Printing values, iterating over vectors.

# 3️⃣ **Key Tips**:
#    - Always ensure the condition in a `while` loop eventually becomes `FALSE` (to avoid infinite loops).
#    - Use `for` loops for cleaner code when working with known sequences.

# --- End of Lecture ---