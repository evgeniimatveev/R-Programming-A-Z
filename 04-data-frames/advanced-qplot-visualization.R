# ===============================================
# 📖 Lecture-Script: Advanced Visualization With qplot in R 📊
# ===============================================

# --- 🔷 Introduction
# Data visualization is essential to understand, analyze, and present insights.
# The `qplot()` function in R's `ggplot2` library is a quick way to create 
# beautiful and informative plots.
# This lecture demonstrates advanced options in `qplot`, 
# using merged datasets and introducing new features like:
# - Colors, Shapes, Sizes
# - Transparency (Alpha)
# - Customization for clarity and aesthetics.

# ===============================================
# 🔷 Part 1: Setup and Preparation 🛠
# ===============================================

# --- Step 1: Load Required Library
# Ensure the ggplot2 package is installed and loaded.
library(ggplot2)

# --- Step 2: Load or Create the Merged Data Frame
# We assume you already have the merged dataset from the previous lesson.
# If not, re-create the merged data frame as shown below:

# Sample Merged Data (replace this with actual merged data if available)
merged <- data.frame(
  Country.Code = c("ABW", "AFG", "AGO", "ALB", "ARE", "ARG"),
  Internet.users = c(78.9, 5.9, 19.1, 57.2, 88.0, 59.9),
  Birth.rate = c(10.2, 35.3, 46.1, 12.9, 11.0, 17.7),
  Region = c("The Americas", "Asia", "Africa", "Europe", "Middle East", "The Americas")
)

# View the first few rows of the merged dataset
print(head(merged))

# ===============================================
# 🔷 Part 2: Basic Visualization With qplot 🖌
# ===============================================

# --- Step 3: Scatter Plot With Color
# Visualize the relationship between Internet usage and Birth rate,
# grouped by Region (color represents Region).
qplot(data = merged, x = Internet.users, y = Birth.rate, color = Region,
      main = "Internet Users vs Birth Rate by Region",
      xlab = "Internet Users (per 100 people)", 
      ylab = "Birth Rate (per 1000 people)")

# --- Explanation:
# - `color = Region`: Assigns a unique color to each Region.
# - Titles are added using `main`, `xlab`, and `ylab` for better readability.

# ===============================================
# 🔷 Part 3: Adding Size and Shape for Customization 🎨
# ===============================================

# --- Step 4: Scatter Plot With Fixed Size and Custom Shape
# Add size and shape parameters to make the points stand out.
qplot(data = merged, x = Internet.users, y = Birth.rate, 
      color = Region, size = I(5), shape = I(17),
      main = "Customized Plot: Size and Shape",
      xlab = "Internet Users", ylab = "Birth Rate")

# --- Explanation:
# - `size = I(5)`: Sets a fixed size for all points.
# - `shape = I(17)`: Uses shape ID 17 (a triangle).
# - Shapes in R have specific IDs; refer to the R symbol chart for options.

# --- Step 5: Experiment With Another Shape
# Use a different shape (e.g., 14) for variation.
qplot(data = merged, x = Internet.users, y = Birth.rate, 
      color = Region, size = I(5), shape = I(14),
      main = "Customized Plot: Different Shape",
      xlab = "Internet Users", ylab = "Birth Rate")

# --- Key Insight:
# Shapes can emphasize specific observations or categories in the plot.

# ===============================================
# 🔷 Part 4: Adding Transparency for Clarity ✨
# ===============================================

# --- Step 6: Scatter Plot With Transparency (Alpha)
# Use `alpha` to control transparency, making overlapping points clearer.
qplot(data = merged, x = Internet.users, y = Birth.rate, 
      color = Region, size = I(5), shape = I(21), alpha = I(0.6),
      main = "Internet Users vs Birth Rate With Transparency",
      xlab = "Internet Users", ylab = "Birth Rate")

# --- Explanation:
# - `alpha = I(0.6)`: Adds transparency (60% opacity) to the points.
# - This is particularly useful when points overlap, improving visual clarity.

# ===============================================
# 🔷 Part 5: Advanced Customization 🧩
# ===============================================

# --- Step 7: Customize Plot Appearance
# Combine size, shape, transparency, and add gridlines for better aesthetics.
qplot(data = merged, x = Internet.users, y = Birth.rate, 
      color = Region, size = I(5), shape = I(16), alpha = I(0.7)) +
  theme_minimal() +  # Apply a clean theme
  ggtitle("Internet Users vs Birth Rate by Region") +  # Add a title
  xlab("Internet Users (per 100 people)") +  # Customize x-axis label
  ylab("Birth Rate (per 1000 people)") +     # Customize y-axis label
  theme(plot.title = element_text(hjust = 0.5, size = 14, face = "bold"),
        axis.title = element_text(size = 12))

# --- Key Insight:
# - `theme_minimal()`: Provides a clean and modern theme.
# - `ggtitle()`, `xlab()`, and `ylab()` allow you to add meaningful titles and labels.
# - The `theme()` function customizes text alignment, size, and appearance.

# ===============================================
# 🔷 Part 6: Practice Examples 📝
# ===============================================

# --- 📝 Exercise 1: Change Shape and Size
# Modify the plot to use:
# - Shape ID 15 (Square).
# - Fixed size of 3.
# Add transparency for clarity.

qplot(data = merged, x = Internet.users, y = Birth.rate, 
      color = Region, size = I(3), shape = I(15), alpha = I(0.5),
      main = "Practice: Shape ID 15 and Transparency")

# --- 📝 Exercise 2: Filter and Plot
# Create a new data frame with only "The Americas" region,
# and visualize Internet Users vs Birth Rate.

americas_data <- merged[merged$Region == "The Americas", ]
qplot(data = americas_data, x = Internet.users, y = Birth.rate, 
      color = Region, size = I(5), shape = I(17),
      main = "Filtered Plot: The Americas Region")

# ===============================================
# 🔷 Summary - Key Takeaways 🚀
# ===============================================

# 🟢 **Key Insights:**
# 1️⃣ `qplot()` is a powerful tool for quick visualizations in R.
# 2️⃣ Customization options include:
#     - `color`, `size`, `shape` for visual appeal.
#     - `alpha` for transparency (useful for overlapping points).
# 3️⃣ Use themes like `theme_minimal()` to clean up the appearance.
# 4️⃣ Titles and labels improve plot readability and professionalism.
# 5️⃣ Practice filtering and visualizing subsets of data for targeted analysis.

# --- End of Lecture-Script 🏁 ---