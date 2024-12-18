# ===============================================
# 📖 Lecture: Understanding the "while" Loop in R
# ===============================================

# --- 🔷 What is a "while" loop?
# A "while" loop executes a block of code repeatedly 
# **as long as the specified condition is TRUE**.
# Once the condition becomes FALSE, the loop stops.

# --- 🔑 Key Points:
# 1️⃣ The loop condition is checked **before** each iteration.
# 2️⃣ If the condition is FALSE from the beginning, the loop won’t run.
# 3️⃣ Be careful to avoid infinite loops by ensuring the condition eventually becomes FALSE.

# --- 🧠 Syntax:
# while (condition) {
#   # Code to execute repeatedly
# }

# ===============================================
# 🟢 Example 1: Counting from 1 to 5
# ===============================================

# Initialize a counter variable
counter <- 1  # Start at 1

# Run a while loop
while (counter <= 20) {  # The loop will run as long as counter <= 5
  print(paste("Counter value is:", counter))  # Print the current counter value
  counter <- counter + 2  # Increment the counter by 1
}

# Indicate that the loop is complete
print("Finished counting from 1 to 20!")

# --- Expected Output:
# [1] "Counter value is: 1"
# [1] "Counter value is: 2"
# [1] "Counter value is: 3"
# [1] "Counter value is: 4"
# [1] "Counter value is: 5"
# [1] "Finished counting from 1 to 5!"

# ===============================================
# 🟢 Example 2: Summing numbers from 1 to 10
# ===============================================

# Initialize variables
sum_value <- 0  # To store the sum
counter <- 1    # Start counting from 1

# Use a while loop to calculate the sum
while (counter <= 10) {
  sum_value <- sum_value + counter  # Add the current counter to the sum
  print(paste("After adding", counter, "sum is:", sum_value))  # Show progress
  counter <- counter + 1  # Increment the counter
}

# Print the final result
print(paste("The final sum is:", sum_value))

# --- Expected Output:
# [1] "After adding 1 sum is: 1"
# [1] "After adding 2 sum is: 3"
# ...
# [1] "After adding 10 sum is: 55"
# [1] "The final sum is: 55"

# ===============================================
# 🟢 Example 3: Printing even numbers from 1 to 20
# ===============================================

# Initialize the counter
counter <- 1

# Use a while loop
while (counter <= 20) {
  if (counter %% 2 == 0) {  # Check if the number is even
    print(paste("Even number:", counter))  # Print the even number
  }
  counter <- counter + 1  # Increment the counter
}

# --- Expected Output:
# [1] "Even number: 2"
# [1] "Even number: 4"
# ...
# [1] "Even number: 20"

# ===============================================
# 🔴 Common Mistakes with While Loops
# ===============================================

# --- Infinite Loops:
# If you forget to update the counter or the condition is always TRUE,
# the loop will run forever.
# Example (DO NOT RUN!):
# counter <- 1
# while (counter <= 5) {
#   print("Infinite loop!")  # No increment of counter
# }

# --- Solution: Always update the condition inside the loop
# counter <- counter + 1

# ===============================================
# 🟣 Practice Problems
# ===============================================

# --- 📝 Problem 1: Squares of Numbers
# Write a while loop that prints the squares of numbers from 1 to 10.
# Example output: "Square of 1 is: 1", "Square of 2 is: 4", ..., "Square of 10 is: 100".

# Solution:
counter <- 1
while (counter <= 10) {
  print(paste("Square of", counter, "is:", counter^2))
  counter <- counter + 1
}

# --- 📝 Problem 2: Guess the Secret Number
# Write a while loop that asks the user to guess a secret number (e.g., 7).
# The loop should continue until the user guesses the correct number.

# Solution:
secret_number <- 7
guess <- as.numeric(readline("Guess the secret number: "))

while (guess != secret_number) {
  print("Wrong guess! Try again.")
  guess <- as.numeric(readline("Guess the secret number: "))
}

print("Congratulations! You guessed the number.")

# --- 📝 Problem 3: Find Smallest N for a Sum > 200
# Write a while loop to find the smallest number N such that the sum of numbers
# from 1 to N exceeds 200. Print both N and the sum.

# Solution:
sum_value <- 0
counter <- 1

while (sum_value <= 200) {
  sum_value <- sum_value + counter
  counter <- counter + 1
}

print(paste("The smallest N is:", counter - 1))
print(paste("The sum is:", sum_value))

# --- Expected Output:
# [1] "The smallest N is: 20"
# [1] "The sum is: 210"

# ===============================================
# 🔵 Summary
# ===============================================

# 1️⃣ The "while" loop runs as long as the condition is TRUE.
# 2️⃣ Always ensure the condition eventually becomes FALSE (update your variables!).
# 3️⃣ Use "while" loops when the number of iterations is unknown ahead of time.
# 4️⃣ Practice using while loops to solve real-world problems (e.g., calculations, conditions).

# --- End of Lecture ---