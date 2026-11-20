# ===============================================
# 📖 Lecture-Script: The Power of Vectorized Operations in R
# ===============================================

# --- 🔷 Introduction
# R is optimized for vectorized operations, which make code concise, fast, 
# and easier to read. In contrast, de-vectorized operations often rely on loops, 
# which are slower and more verbose.
# 
# --- 🛠 Key Concepts:
# 1️⃣ Vectorized operations process entire vectors in parallel.  
# 2️⃣ De-vectorized operations rely on element-by-element iteration.  
# 3️⃣ Vectorization makes R highly efficient for large datasets.

# --- 🔷 Topics Covered:
# - Vectorized vs. De-vectorized operations  
# - Benchmarking performance  
# - Advanced examples and comparisons  

# ===============================================
# 🔷 Part 1: Vectorized Operations vs. De-Vectorized Operations
# ===============================================

# --- 🛠 Example 1: Simple Arithmetic Operations
# Let's compare vectorized and de-vectorized approaches for adding two vectors.

# Create two numeric vectors
x <- c(1, 2, 3, 4, 5)
y <- c(10, 20, 30, 40, 50)

# Vectorized addition
vectorized_sum <- x + y  # Element-wise addition
print(vectorized_sum)  # Output: [1] 11 22 33 44 55

# De-vectorized addition using a loop
de_vectorized_sum <- numeric(length(x))  # Preallocate memory
for (i in seq_along(x)) {
  de_vectorized_sum[i] <- x[i] + y[i]
}
print(de_vectorized_sum)  # Output: [1] 11 22 33 44 55

# --- 🛠 Key Insight:
# Vectorized code (`x + y`) is more concise and significantly faster compared to loops.

# ===============================================
# 🔷 Part 2: Performance Benchmarking
# ===============================================

# --- 🛠 Example 2: Benchmarking Vectorized vs. De-Vectorized Code
# Simulate large vectors
N <- 1e7  # 10 million elements
a <- rnorm(N)  # Random numbers for vector `a`
b <- rnorm(N)  # Random numbers for vector `b`

# Vectorized approach
start_time_vectorized <- Sys.time()
c <- a + b  # Vectorized addition
end_time_vectorized <- Sys.time()
print(paste("Vectorized Time:", end_time_vectorized - start_time_vectorized))

# De-vectorized approach
start_time_de_vectorized <- Sys.time()
d <- numeric(N)  # Preallocate memory for de-vectorized approach
for (i in 1:N) {
  d[i] <- a[i] + b[i]
}
end_time_de_vectorized <- Sys.time()
print(paste("De-Vectorized Time:", end_time_de_vectorized - start_time_de_vectorized))

# --- 🛠 Key Insight:
# Vectorized operations are **much faster** than loops, especially for large datasets.  
# De-vectorized loops can be hundreds of times slower.

# ===============================================
# 🔷 Part 3: Advanced Examples
# ===============================================

# --- 🛠 Example 3: Applying Complex Mathematical Operations
# Vectorized approach with functions
x <- c(1, 2, 3, 4, 5)
result_vectorized <- log(x) + sqrt(x) * 2
print(result_vectorized)  # Output: Complex computation in one line

# Equivalent de-vectorized approach using a loop
result_de_vectorized <- numeric(length(x))
for (i in seq_along(x)) {
  result_de_vectorized[i] <- log(x[i]) + sqrt(x[i]) * 2
}
print(result_de_vectorized)

# --- 🛠 Key Insight:
# Vectorization not only simplifies code but also makes it easier to apply multiple operations.

# --- 🛠 Example 4: Logical Comparisons and Filtering
# Vectorized logical operations
set.seed(123)
data <- rnorm(10)  # Generate random data
print(data)  # View the data

filtered_vectorized <- data[data > 0]  # Keep only positive values
print(filtered_vectorized)

# De-vectorized equivalent
filtered_de_vectorized <- numeric(0)  # Empty vector to store results
for (i in seq_along(data)) {
  if (data[i] > 0) {
    filtered_de_vectorized <- c(filtered_de_vectorized, data[i])  # Append values
  }
}
print(filtered_de_vectorized)

# --- 🛠 Key Insight:
# Vectorized filtering is both faster and cleaner.

# ===============================================
# 🔷 Part 4: Beyond Loops – Custom Vectorized Functions
# ===============================================

# --- 🛠 Example 5: Custom Vectorized Operations
# Use vectorized functions like `ifelse` for efficient element-wise computation.
values <- c(-5, 0, 10, -3, 8)

# Vectorized condition: Replace negative values with 0
non_negative <- ifelse(values < 0, 0, values)
print(non_negative)  # Output: [1]  0  0 10  0  8

# De-vectorized equivalent
non_negative_loop <- numeric(length(values))
for (i in seq_along(values)) {
  if (values[i] < 0) {
    non_negative_loop[i] <- 0
  } else {
    non_negative_loop[i] <- values[i]
  }
}
print(non_negative_loop)

# --- 🛠 Key Insight:
# Use `ifelse` and other vectorized functions to eliminate the need for explicit loops.

# ===============================================
# 🔵 Summary: Vectorized vs. De-Vectorized Operations
# ===============================================

# 🟢 **Advantages of Vectorized Operations:**
# 1️⃣ Cleaner, more concise, and easier-to-read code.  
# 2️⃣ Faster performance, especially for large datasets.  
# 3️⃣ Built-in vectorized functions for complex computations.  

# 🛑 **Limitations of De-Vectorized Operations:**
# 1️⃣ Slower execution time due to iteration.  
# 2️⃣ Verbose and harder-to-maintain code.  
# 3️⃣ Higher risk of errors (e.g., forgetting to preallocate memory).  

# --- End of Lecture --- 🚀