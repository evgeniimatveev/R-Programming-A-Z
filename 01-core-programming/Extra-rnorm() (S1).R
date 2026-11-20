# ===============================================
# 📖 What is `rnorm()`?
# ===============================================

# --- 🔷 `rnorm(n, mean = 0, sd = 1)`:
# The function generates `n` random numbers from a normal distribution.
# - `n`: Number of random numbers to generate.
# - `mean`: Mean of the distribution (default is 0).
# - `sd`: Standard deviation of the distribution (default is 1).

# Example:
x <- rnorm(1)  # Generates 1 random number with mean = 0 and sd = 1
print(x)

# ===============================================
# 🔷 Practice Examples with `rnorm()`
# ===============================================

# --- 🟢 Example 1: Classify a Single Random Number
x <- rnorm(1)  # Generate a random number

if (x > 1) {
  print("Greater than 1")
} else if (x >= -1) {
  print("Between -1 and 1")
} else {
  print("Less than -1")
}

# --- 🟢 Example 2: Generate Multiple Random Numbers and Classify Them
random_numbers <- rnorm(10)  # Generate 10 random numbers

for (i in random_numbers) {
  if (i > 1) {
    print(paste(i, ": Greater than 1"))
  } else if (i >= -1) {
    print(paste(i, ": Between -1 and 1"))
  } else {
    print(paste(i, ": Less than -1"))
  }
}

# --- 🟢 Example 3: Count Numbers in Each Category
random_numbers <- rnorm(100)  # Generate 100 random numbers

# Initialize counters
greater_than_one <- 0
between_neg1_and_1 <- 0
less_than_neg1 <- 0

for (i in random_numbers) {
  if (i > 1) {
    greater_than_one <- greater_than_one + 1
  } else if (i >= -1) {
    between_neg1_and_1 <- between_neg1_and_1 + 1
  } else {
    less_than_neg1 <- less_than_neg1 + 1
  }
}

# Print the counts
print(paste("Greater than 1:", greater_than_one))
print(paste("Between -1 and 1:", between_neg1_and_1))
print(paste("Less than -1:", less_than_neg1))

# ===============================================
# 🔷 Advanced Practice: Simulating Real-World Scenarios
# ===============================================

# --- 🟢 Example 4: Simulate Exam Scores and Classify Grades
scores <- rnorm(50, mean = 75, sd = 10)  # Generate 50 random scores with mean = 75 and sd = 10

for (score in scores) {
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
  print(paste("Score:", round(score, 1), "Grade:", grade))
}

# --- 🟢 Example 5: Calculate Probabilities in a Normal Distribution
# Generate 1000 random numbers
random_numbers <- rnorm(1000)

# Calculate the proportion of numbers in specific ranges
prop_greater_than_1 <- sum(random_numbers > 1) / length(random_numbers)
prop_between_neg1_and_1 <- sum(random_numbers >= -1 & random_numbers <= 1) / length(random_numbers)
prop_less_than_neg1 <- sum(random_numbers < -1) / length(random_numbers)

# Print the probabilities
print(paste("Proportion greater than 1:", prop_greater_than_1))
print(paste("Proportion between -1 and 1:", prop_between_neg1_and_1))
print(paste("Proportion less than -1:", prop_less_than_neg1))

# --- 🟢 Example 6: Monte Carlo Simulation
# Estimate the value of π using random points
set.seed(123)  # Set seed for reproducibility
n <- 10000  # Number of random points
x_coords <- runif(n, min = -1, max = 1)  # Random x-coordinates
y_coords <- runif(n, min = -1, max = 1)  # Random y-coordinates

# Check if points fall within the unit circle
inside_circle <- x_coords^2 + y_coords^2 <= 1

# Estimate π using the ratio of points inside the circle
pi_estimate <- 4 * sum(inside_circle) / n
print(paste("Estimated value of π:", pi_estimate))

# ===============================================
# 🟢 Practice Exercises
# ===============================================

# --- 📝 Exercise 1: Classify 20 Random Numbers
# Generate 20 random numbers with `rnorm()` and classify them into:
# - Greater than 2
# - Between -2 and 2
# - Less than -2

# Solution:
random_numbers <- rnorm(20)

for (i in random_numbers) {
  if (i > 2) {
    print(paste(i, ": Greater than 2"))
  } else if (i >= -2) {
    print(paste(i, ": Between -2 and 2"))
  } else {
    print(paste(i, ": Less than -2"))
  }
}

# --- 📝 Exercise 2: Calculate the Mean and SD of Random Numbers
# Generate 50 random numbers with `rnorm()` and calculate:
# - The mean of the numbers.
# - The standard deviation of the numbers.

# Solution:
numbers <- rnorm(50)
mean_value <- mean(numbers)  # Calculate the mean
sd_value <- sd(numbers)  # Calculate the standard deviation

print(paste("Mean:", mean_value))
print(paste("Standard Deviation:", sd_value))

# --- 📝 Exercise 3: Simulate Customer Wait Times
# Simulate 100 customer wait times (minutes) using `rnorm()` with mean = 15, sd = 5.
# Count how many customers waited:
# - Less than 10 minutes.
# - Between 10 and 20 minutes.
# - More than 20 minutes.

# Solution:
wait_times <- rnorm(100, mean = 15, sd = 5)

less_than_10 <- sum(wait_times < 10)
between_10_and_20 <- sum(wait_times >= 10 & wait_times <= 20)
more_than_20 <- sum(wait_times > 20)

print(paste("Less than 10 minutes:", less_than_10))
print(paste("Between 10 and 20 minutes:", between_10_and_20))
print(paste("More than 20 minutes:", more_than_20))

# ===============================================
# 🔵 Summary
# ===============================================

# 1️⃣ **What is `rnorm()`?**
#    - Generates random numbers from a normal distribution.
#    - Parameters:
#        - `n`: Number of random numbers.
#        - `mean`: Mean of the distribution.
#        - `sd`: Standard deviation of the distribution.

# 2️⃣ **Applications:**
#    - Data simulation (e.g., scores, wait times).
#    - Statistical analysis (e.g., probabilities, proportions).
#    - Monte Carlo simulations.

# 3️⃣ **Key Functions:**
#    - `mean()`, `sd()`: To calculate mean and standard deviation.
#    - `sum()`: To count numbers meeting specific conditions.
#    - `if`, `ifelse()`, `for`: For conditional analysis and looping.

# --- End of Practical Section ---