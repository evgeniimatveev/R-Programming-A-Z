# ===============================================
# 📖 Lecture-Script: Introduction to qplot() in R
# ===============================================

# --- 🔷 Introduction
# `qplot()` is a quick plotting function from the `ggplot2` package.
# It allows you to create simple visualizations with minimal code.
# `qplot()` is great for:
# 1️⃣ Quick scatter plots and histograms.
# 2️⃣ Customizing size, color, and geometry.
# 3️⃣ Exploring relationships between variables.

# --- 🛠 Note:
# The `qplot()` function is now **deprecated** in ggplot2 3.4.0+,
# but it still works for quick exploration.

# ===============================================
# 🔷 Part 1: Setting Up
# ===============================================

# Install and load ggplot2
# install.packages("ggplot2")  # Uncomment if ggplot2 is not installed
library(ggplot2)

# Load the dataset
stats <- read.csv(file.choose())  # Choose your CSV file
print(head(stats))  # View the first few rows

# ===============================================
# 🔷 Part 2: Basic `qplot()` Examples
# ===============================================

# --- 🛠 Example 1: Simple Histogram
# Plot a histogram of Internet.users
qplot(data = stats, x = Internet.users)

# --- 🛠 Example 2: Scatter Plot
# Relationship between Income.Group and Birth.rate
qplot(data = stats, x = Income.Group, y = Birth.rate)

# --- 🛠 Example 3: Adding Custom Size
# Set point size to 5
qplot(data = stats, x = Income.Group, y = Birth.rate, size = I(5))

# --- 🛠 Example 4: Adding Color
# Set points to green color
qplot(data = stats, x = Income.Group, y = Birth.rate, 
      size = I(5), color = I("green"))

# --- 🛠 Example 5: Boxplot
# Boxplot for Birth.rate by Income.Group
qplot(data = stats, x = Income.Group, y = Birth.rate, geom = "boxplot")

# --- 🛠 Key Insight:
# Use `geom = "boxplot"` for summarizing distributions across groups.

# ===============================================
# 🔷 Part 3: Additional Examples
# ===============================================

# --- 🛠 Example 6: Density Plot
# Plot a density distribution of Birth.rate
qplot(data = stats, x = Birth.rate, geom = "density", fill = I("lightblue"))

# --- 🛠 Example 7: Adding Transparency
# Scatter plot with transparency (alpha)
qplot(data = stats, x = Internet.users, y = Birth.rate, alpha = I(0.5))

# --- 🛠 Example 8: Bar Plot
# Create a bar plot for Income.Group categories
qplot(data = stats, x = Income.Group, geom = "bar", fill = I("lightgreen"))

# --- 🛠 Example 9: Combining Multiple Aesthetics
# Customize size, color, and transparency
qplot(data = stats, x = Internet.users, y = Birth.rate, 
      size = I(3), color = Income.Group, alpha = I(0.7))

# --- 🛠 Example 10: Faceted Scatter Plot
# Use facets to split data into panels
qplot(data = stats, x = Internet.users, y = Birth.rate, 
      facets = ~ Income.Group, color = I("blue"))

# --- 🛠 Key Insight:
# Faceting helps split your data into groups for better comparisons.

# ===============================================
# 🔷 Part 4: Understanding `qplot()` Parameters
# ===============================================

# --- Basic Parameters of qplot():
# x         - X-axis variable.
# y         - Y-axis variable (optional).
# geom      - Type of plot: "point", "line", "boxplot", "density", "bar", etc.
# color     - Change the color of points/lines.
# size      - Adjust the size of points/lines.
# fill      - Fill color for density or bar plots.
# alpha     - Transparency of points/lines.
# facets    - Split data into panels for comparison.

# --- 🛠 Example:
# `qplot(data = stats, x = Internet.users, y = Birth.rate, 
#       geom = "point", color = Income.Group, size = I(5))`

# ===============================================
# 🔷 Part 5: Practical Exercises
# ===============================================

# --- 📝 Exercise 1: Histograms and Density
# 1. Create a histogram for "Birth.rate".
# 2. Add a density plot with light blue fill.

# --- 📝 Exercise 2: Scatter Plots
# 1. Create a scatter plot for "Internet.users" vs "Birth.rate".
# 2. Set size = 3 and color based on "Income.Group".

# --- 📝 Exercise 3: Boxplots and Bar Charts
# 1. Create a boxplot for "Birth.rate" grouped by "Income.Group".
# 2. Create a bar plot for "Income.Group" with a green fill.

# --- 📝 Exercise 4: Faceting
# Create faceted scatter plots for "Internet.users" vs "Birth.rate" 
# across each "Income.Group".

# ===============================================
# 🔵 Summary
# ===============================================

# 🟢 **Key Takeaways:**
# 1️⃣ `qplot()` is a quick and easy way to explore your data visually.
# 2️⃣ Use `geom` to customize the type of plot (scatter, histogram, boxplot, etc.).
# 3️⃣ Add color, size, and transparency for better visual insights.
# 4️⃣ Facets allow you to split data into panels for grouped analysis.

# --- End of Lecture --- 🚀