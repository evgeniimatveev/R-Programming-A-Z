# ===============================================
# 📖 Lecture-Script: Visualization in R with qplot()
# ===============================================

# --- 🔷 Introduction
# Data visualization is essential for understanding data patterns.
# `qplot()` is part of the `ggplot2` package, designed for quick and easy plots.
# In this lecture, we will:
# 1️⃣ Create scatter plots with customization (color, size).
# 2️⃣ Use boxplots and histograms for summary.
# 3️⃣ Apply advanced visual customizations.

# ===============================================
# 🔷 Part 1: Setting Up
# ===============================================

# Install and load the ggplot2 package
# install.packages("ggplot2")  # Uncomment if not installed
library(ggplot2)

# Load dataset
stats <- read.csv(file.choose())  # Choose your CSV file
print(head(stats))  # View the first few rows

# ===============================================
# 🔷 Part 2: Basic Visualizations
# ===============================================

# --- 🛠 Example 1: Simple Scatter Plot
# Scatter plot of Internet.users vs Birth.rate
qplot(data = stats, x = Internet.users, y = Birth.rate)

# --- 🛠 Example 2: Adding Color
# Scatter plot with all points in red
qplot(data = stats, x = Internet.users, y = Birth.rate, color = I("red"))

# --- 🛠 Example 3: Grouped Scatter Plot
# Color points based on Income.Group
qplot(data = stats, x = Internet.users, y = Birth.rate, color = Income.Group, size = I(5))

# --- 🛠 Key Insight:
# Use `color` to distinguish data points based on categories.

# ===============================================
# 🔷 Part 3: Customizing Scatter Plots
# ===============================================

# --- 🛠 Example 4: Adjusting Size and Color
# Customize size of points and set colors dynamically
qplot(data = stats, x = Internet.users, y = Birth.rate, 
      size = I(3), color = I("blue"))

# --- 🛠 Example 5: Adding Transparency
# Use transparency to reduce overlapping points (alpha parameter)
qplot(data = stats, x = Internet.users, y = Birth.rate, 
      color = Income.Group, alpha = I(0.6), size = I(4))

# --- 🛠 Example 6: Highlighting Key Points
# Filtered visualization: Internet.users < 20
filtered_data <- stats[stats$Internet.users < 20, ]
qplot(data = filtered_data, x = Internet.users, y = Birth.rate, 
      color = I("orange"), size = I(5))

# --- 🛠 Example 7: Faceted Plots
# Split the scatter plot by Income.Group using facets
qplot(data = stats, x = Internet.users, y = Birth.rate, 
      facets = ~ Income.Group, color = I("green"))

# --- 🛠 Key Insight:
# Faceting helps analyze patterns across subsets of data.

# ===============================================
# 🔷 Part 4: Other Plot Types with qplot()
# ===============================================

# --- 🛠 Example 8: Histogram
# Visualize the distribution of Internet.users
qplot(data = stats, x = Internet.users, geom = "histogram", 
      fill = I("blue"), bins = 20)

# --- 🛠 Example 9: Boxplot
# Compare Birth.rate across Income.Group
qplot(data = stats, x = Income.Group, y = Birth.rate, 
      geom = "boxplot", fill = I("lightblue"))

# --- 🛠 Example 10: Density Plot
# Density plot for Birth.rate
qplot(data = stats, x = Birth.rate, geom = "density", 
      fill = I("green"), alpha = I(0.5))

# --- 🛠 Example 11: Bar Plot
# Bar plot for counts of Income.Group
qplot(data = stats, x = Income.Group, geom = "bar", fill = I("pink"))

# ===============================================
# 🔷 Part 5: Advanced Aesthetics
# ===============================================

# --- 🛠 Example 12: Combined Customizations
# Customize size, color, and transparency with facets
qplot(data = stats, x = Internet.users, y = Birth.rate, 
      color = Income.Group, size = I(3), alpha = I(0.7), 
      facets = ~ Income.Group)

# --- 🛠 Example 13: Save Plots
# Save the current plot to a file
ggsave("my_plot.png")

# --- 🛠 Key Insight:
# Use `ggsave()` to save high-quality plots for reports.

# ===============================================
# 🔷 Part 6: Practice Exercises
# ===============================================

# --- 📝 Exercise 1: Scatter Plot
# 1. Create a scatter plot of Birth.rate vs Internet.users.
# 2. Use color to distinguish between "Income.Group".

# --- 📝 Exercise 2: Histograms and Boxplots
# 1. Create a histogram of Birth.rate with 15 bins.
# 2. Create a boxplot comparing Internet.users across Income.Group.

# --- 📝 Exercise 3: Advanced Customization
# 1. Create a scatter plot with:
#    - Internet.users on the x-axis.
#    - Birth.rate on the y-axis.
#    - Color points by Income.Group.
#    - Adjust transparency and size dynamically.
# 2. Save your plot as a PNG file.

# ===============================================
# 🔵 Summary
# ===============================================

# 🟢 **Key Takeaways:**
# 1️⃣ Use `qplot()` for quick and effective visualizations.
# 2️⃣ Customize scatter plots using `color`, `size`, and `alpha`.
# 3️⃣ Explore different plot types like histograms, boxplots, and density plots.
# 4️⃣ Use facets to split data into smaller panels for analysis.

# --- End of Lecture --- 🚀