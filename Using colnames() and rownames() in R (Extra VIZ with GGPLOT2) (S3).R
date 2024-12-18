# ===============================================
# 📖 Lecture-Script: Using colnames() and rownames() in R
# ===============================================

# --- 🔷 Introduction
# In R, matrices allow assigning names to rows and columns for better clarity and functionality.  
# Functions `rownames()` and `colnames()` are used to name or retrieve these dimensions,  
# making matrix manipulation and indexing more intuitive.  

# --- 🛠 Key Concepts:
# 1️⃣ Adding names to rows and columns.  
# 2️⃣ Accessing elements using names.  
# 3️⃣ Removing names using `NULL`.  
# 4️⃣ Practical examples with custom data.  

# ===============================================
# 🔷 Part 1: Naming Rows and Columns
# ===============================================

# --- 🛠 Example 1: Creating a matrix and naming rows and columns
# Create a 3x3 matrix
temp.vec <- rep(c(3, "yes", 19), each = 3)
b <- matrix(temp.vec, nrow = 3, ncol = 3)
b
# Assign row names
rownames(b) <- c("how", "are", "you?")
print(b)  # Output:
#      [,1] [,2] [,3]
# how     3  yes   19
# are     3  yes   19
# you?    3  yes   19

# Assign column names
colnames(b) <- c("x", "y", "z")
print(b)  # Output:
#      x    y    z  
# how   3   yes  19 
# are   3   yes  19 
# you?  3   yes  19 

# --- 🛠 Key Insight:
# Assigning names enhances readability, especially for larger datasets.

# ===============================================
# 🔷 Part 2: Accessing and Modifying Elements
# ===============================================

# --- 🛠 Example 2: Accessing elements by name
print(b["you?", "y"])  # Access element in row "you?" and column "y": [1] "yes"

# --- 🛠 Example 3: Modifying values using names
b["are", "y"] <- "no"
print(b)  # Output:
#      x    y    z  
# how   3   yes  19 
# are   3   no   19 
# you?  3   yes  19 

# --- 🛠 Key Insight:
# Row and column names act like labels, allowing easy reference to data.

# ===============================================
# 🔷 Part 3: Removing Names with NULL
# ===============================================

# --- 🛠 Example 4: Removing names
rownames(b) <- NULL
colnames(b) <- NULL
print(b)  # Matrix without row or column names

# --- 🛠 Key Insight:
# Use `NULL` to remove names when labels are no longer needed.

# ===============================================
# 🔷 Part 4: Named Vectors
# ===============================================

# --- 🛠 Example 5: Working with named vectors
Tom <- 1:10
names(Tom) <- c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j")
print(Tom)  # Named vector: "a" to "j"

# Accessing elements by name
print(Tom["d"])  # Access the element named "d": [1] 4

# Remove names
names(Tom) <- NULL
print(Tom)  # Vector without names

# --- 🛠 Key Insight:
# Named vectors are useful for datasets with descriptive labels.

# ===============================================
# 🔷 Part 5: ggplot2 Visualization with Named Data
# ===============================================

# --- 🛠 Example 6: Simple ggplot2 plot using named vectors
library(ggplot2)

# Create a named vector for plotting
years <- c(2000, 2005, 2010, 2015, 2020)
values <- c(50, 100, 150, 200, 250)
names(values) <- years

# Convert to data frame for ggplot
plot_data <- data.frame(
  Year = as.numeric(names(values)),
  Value = values
)

# Simple bar plot
ggplot(data = plot_data, aes(x = Year, y = Value)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  labs(title = "Value Growth Over Years", x = "Year", y = "Value") +
  theme_minimal()

# --- 🛠 Key Insight:
# ggplot2 integrates seamlessly with named data, making visualization intuitive.

# ===============================================
# 🔵 Practice Exercises
# ===============================================

# --- 📝 Exercise 1: Matrix Naming
# 1. Create a 4x4 matrix with numbers 1 to 16.
# 2. Assign row names: "R1", "R2", "R3", "R4".
# 3. Assign column names: "C1", "C2", "C3", "C4".
# 4. Access element at "R3" and "C4" by name.

# --- Solution:
practice_matrix <- matrix(1:16, nrow = 4)
rownames(practice_matrix) <- c("R1", "R2", "R3", "R4")
colnames(practice_matrix) <- c("C1", "C2", "C3", "C4")
print(practice_matrix["R3", "C4"])

# --- 📝 Exercise 2: ggplot Visualization
# Create a line plot of a named vector with ggplot2:
# 1. Years: 2010, 2012, 2014, 2016, 2018.
# 2. Values: 120, 140, 160, 180, 200.

# --- Solution:
years_ex <- c(2010, 2012, 2014, 2016, 2018)
values_ex <- c(120, 140, 160, 180, 200)
names(values_ex) <- years_ex

# Convert to data frame for ggplot
plot_data_ex <- data.frame(
  Year = as.numeric(names(values_ex)),
  Value = values_ex
)

# Line plot
ggplot(data = plot_data_ex, aes(x = Year, y = Value)) +
  geom_line(color = "blue", size = 1) +
  geom_point(color = "red", size = 3) +
  labs(title = "Trend of Values Over Years", x = "Year", y = "Value") +
  theme_minimal()

# ===============================================
# 🔵 Summary
# ===============================================

# 🟢 **Key Takeaways:**
# 1️⃣ Use `rownames()` and `colnames()` to name matrix dimensions.  
# 2️⃣ Named vectors and matrices improve data accessibility and readability.  
# 3️⃣ ggplot2 easily integrates with named data for clear visualizations.  

# --- End of Lecture --- 🚀