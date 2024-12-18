# ===============================================
# 📖 Lecture: Law of Large Numbers in R
# ===============================================

# ===============================================
# 🔷 Section 1: Understanding the Basics
# ===============================================

# Example 1: Generating Random Numbers and Calculating the Sample Mean
# Let's start by generating random numbers from a normal distribution.

N <- 10  # Sample size
random_numbers <- rnorm(N, mean = 5, sd = 2)  # Random numbers from N(5, 2)

# Calculate the sample mean
sample_mean <- mean(random_numbers)
population_mean <- 5  # True mean from N(5, 2)

print(paste("Sample mean:", sample_mean))  # The mean of the sample
print(paste("Population mean:", population_mean))  # The true mean

# --- 📝 Notes:
# - The sample mean is not always equal to the population mean, especially for small `N`.
# - As `N` increases, the sample mean will get closer to the population mean.

# ===============================================
# 🔷 Section 2: Simulating the LLN with Loops
# ===============================================

# Example 2: Using a `for` Loop to Approximate the Proportion of Values in [-1, 1]

# Set the sample size
N <- 100000  # Larger `N` improves accuracy
counter <- 0  # Counter for numbers within the range [-1, 1]

# Generate random numbers from a standard normal distribution
random_numbers <- rnorm(N)

# Use a loop to count values in the range
for (i in random_numbers) {
  if (i > -1 & i < 1) {
    counter <- counter + 1  # Increment counter if condition is met
  }
}

# Calculate the proportion
proportion <- counter / N
print(paste("Proportion of values in [-1, 1]:", proportion))

# Compare with the theoretical value
theoretical_value <- pnorm(1) - pnorm(-1)  # Area under N(0,1) curve between -1 and 1
print(paste("Theoretical value:", theoretical_value))

# --- 📝 Notes:
# - The loop counts the values manually, demonstrating the concept step by step.
# - The result becomes closer to the theoretical value as `N` increases.

# ===============================================
# 🔷 Section 3: Vectorized LLN (Efficient Approach)
# ===============================================

# Example 3: Simulating the LLN Without Loops
# Vectorized operations are faster and more concise.

# Generate random numbers
N <- 1000000  # Large sample size
random_numbers <- rnorm(N)

# Calculate the proportion directly
proportion_vectorized <- sum(random_numbers > -1 & random_numbers < 1) / N

print(paste("Proportion (vectorized) within [-1, 1]:", proportion_vectorized))

# --- 📝 Notes:
# - Vectorized operations handle the entire dataset at once.
# - They are faster and preferred for large-scale computations in R.

# ===============================================
# 🔷 Section 4: LLN in Action — Increasing Sample Size
# ===============================================

# Example 4: Observe Convergence of Sample Mean with Increasing `N`

# Set sample sizes
sample_sizes <- c(10, 100, 1000, 10000, 100000)

# Loop through each sample size and calculate the sample mean
for (N in sample_sizes) {
  random_numbers <- rnorm(N, mean = 10, sd = 3)  # Mean = 10, SD = 3
  sample_mean <- mean(random_numbers)  # Sample mean
  print(paste("N =", N, "Sample mean =", round(sample_mean, 2)))
}

# --- 📝 Notes:
# - As `N` increases, the sample mean gets closer to the population mean (10 in this case).

# ===============================================
# 🔷 Section 5: Monte Carlo Simulation (Bonus Example)
# ===============================================

# Example 5: Estimating the Value of π Using Monte Carlo Method

# Generate random points in a square
set.seed(42)  # For reproducibility
N <- 100000  # Number of points
x_coords <- runif(N, min = -1, max = 1)  # x-coordinates
y_coords <- runif(N, min = -1, max = 1)  # y-coordinates

# Check if the points are inside the unit circle
inside_circle <- x_coords^2 + y_coords^2 <= 1  # Pythagoras' theorem

# Estimate π as the ratio of points inside the circle to total points
pi_estimate <- 4 * sum(inside_circle) / N
print(paste("Estimated value of π:", pi_estimate))
print(paste("Actual value of π:", pi))

# --- 📝 Notes:
# - Monte Carlo simulations use random sampling to solve problems numerically.
# - The larger the sample, the better the estimate.

# ===============================================
# 🟢 Practice Exercises
# ===============================================

# --- 📝 Exercise 1: LLN with Different Ranges
# Simulate the LLN for numbers falling in:
# - (-2, 2)
# - (-0.5, 0.5)

# Solution:
N <- 100000
random_numbers <- rnorm(N)

# Range (-2, 2)
prop_range_2 <- sum(random_numbers > -2 & random_numbers < 2) / N
theoretical_2 <- pnorm(2) - pnorm(-2)
print(paste("Proportion (-2, 2):", prop_range_2))
print(paste("Theoretical value (-2, 2):", theoretical_2))

# Range (-0.5, 0.5)
prop_range_05 <- sum(random_numbers > -0.5 & random_numbers < 0.5) / N
theoretical_05 <- pnorm(0.5) - pnorm(-0.5)
print(paste("Proportion (-0.5, 0.5):", prop_range_05))
print(paste("Theoretical value (-0.5, 0.5):", theoretical_05))

# --- 📝 Exercise 2: Compare Loop and Vectorized Approaches
# Generate 100,000 random numbers and calculate the proportion in [-1, 1]
# using both methods. Compare their runtime using `Sys.time()`.

# --- 📝 Exercise 3: Visualizing LLN
# Plot the convergence of sample mean as `N` increases.

# Solution:
library(ggplot2)
sample_sizes <- c(10, 100, 1000, 10000)
means <- sapply(sample_sizes, function(N) mean(rnorm(N, mean = 5, sd = 2)))

data <- data.frame(N = sample_sizes, Mean = means)
ggplot(data, aes(x = N, y = Mean)) +
  geom_line() +
  geom_hline(yintercept = 5, linetype = "dashed", color = "red") +
  labs(title = "Convergence of Sample Mean to Population Mean",
       x = "Sample Size (N)", y = "Sample Mean") +
  theme_minimal()

# ===============================================
# 🔵 Summary
# ===============================================

# 1️⃣ **Key Concept of LLN:**
#    - As `N` increases, the sample mean approaches the population mean.
#    - Larger datasets improve approximation accuracy.

# 2️⃣ **Loop vs. Vectorized Approach:**
#    - Loops are step-by-step but slower for large datasets.
#    - Vectorization is faster and preferred for efficiency.

# 3️⃣ **Applications:**
#    - Risk modeling, simulations, and hypothesis testing.
#    - Monte Carlo methods for estimating probabilities and constants.

# --- End of Lecture ---