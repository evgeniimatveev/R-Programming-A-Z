# ========================================================
# 📊 Lecture-Script: Histograms and Density Charts in R
# ========================================================

# 🔹 Histograms and density plots are essential tools for understanding the distribution 
# of numeric data. They help you quickly identify trends, outliers, and patterns in your data.
# 
# Key concepts:
# - **Histogram**: Groups data into bins and counts frequencies for each bin.
# - **Density plot**: Represents the distribution of data as a smooth curve.
# 
# Why is it important?
# 📌 Helps identify skewness, uniformity, or multimodal distributions.
# 📌 Useful for comparing subsets of data.
# 📌 Provides critical insights when preparing data for machine learning.

# ========================================================
# 🛠 Load Libraries
# ========================================================
library(ggplot2)

# ========================================================
# Part 1: Creating a Histogram 📈
# ========================================================

# 🔹 A histogram shows the count of observations in bins along a numeric axis.

# Create a base ggplot object for Budget data
s <- ggplot(data = movies, aes(x = BudgetMillion))

# 1️⃣ Basic Histogram
s + geom_histogram()  
# Default binwidth is automatically set.

# 2️⃣ Adjusting Bin Width to See Patterns Clearly
s + geom_histogram(binwidth = 10) + ggtitle("Histogram: Bin Width = 10")
s + geom_histogram(binwidth = 20) + ggtitle("Histogram: Bin Width = 20")

# 🎯 Insight: 
# - Small binwidths make the histogram noisy (too detailed).
# - Large binwidths oversimplify the data.
# - Choose a binwidth appropriate for the data's range and size.

# ========================================================
# Part 2: Adding Color to Histograms 🌈
# ========================================================

# 🔹 Adding aesthetics to histograms helps compare distributions across categories.

# 1️⃣ Solid Fill Color
s + geom_histogram(binwidth = 10, fill = "blue") +
  ggtitle("Histogram with Solid Fill Color")

# 2️⃣ Fill Based on Categorical Variable (Genre)
s + geom_histogram(binwidth = 10, aes(fill = Genre)) +
  ggtitle("Histogram Colored by Genre") +
  theme_minimal()

# 3️⃣ Adding an Outline for Clarity
s + geom_histogram(binwidth = 10, aes(fill = Genre), colour = "black") +
  ggtitle("Histogram with Borders")

# ========================================================
# Part 3: Density Charts 📉
# ========================================================

# 🔹 Density plots smooth out histograms and are especially helpful for large datasets.

# 1️⃣ Basic Density Chart
s + geom_density() + ggtitle("Basic Density Chart")

# 2️⃣ Adding Color to the Density Chart
s + geom_density(aes(fill = Genre), alpha = 0.6) +
  ggtitle("Density Chart Filled by Genre")

# 🎯 Insight:
# - Density plots provide a smooth view of the data's distribution.
# - The **alpha** parameter adjusts transparency for better visualization.

# ========================================================
# Part 4: Combining Histograms and Density Charts ✨
# ========================================================

# 🔹 You can overlay density charts on histograms to combine detailed and smooth views.

s + geom_histogram(binwidth = 10, aes(y = ..density.., fill = Genre), alpha = 0.5) +
  geom_density(aes(y = ..density..), colour = "red", size = 1) +
  ggtitle("Combined Histogram and Density Chart")

# 🎯 Insight:
# - Use **y = ..density..** in `geom_histogram()` to scale both plots to the same range.
# - Combining both charts offers a clear, smooth overview while retaining raw frequencies.

# ========================================================
# Part 5: Comparing Multiple Density Plots 🛠
# ========================================================

# 🔹 Compare density distributions by overlaying multiple groups.

s + geom_density(aes(fill = Genre), alpha = 0.5) +
  ggtitle("Comparing Density by Genre") +
  theme_minimal()

# 🔹 Stacked Density Chart
s + geom_density(aes(fill = Genre), position = "stack") +
  ggtitle("Stacked Density Chart")

# ========================================================
# Summary 📝
# ========================================================

# 🟢 Key Takeaways:
# 1️⃣ **Histograms** show counts in bins. Adjust `binwidth` to improve clarity.
# 2️⃣ Use **aes(fill = variable)** to compare subsets visually.
# 3️⃣ **Density plots** smooth data distribution, offering a cleaner view.
# 4️⃣ Overlay histograms with density charts for detailed and smooth visualizations.
# 5️⃣ Always use meaningful labels and titles for readability.

# 📌 Practical Use:
# - Use histograms to spot outliers and skewness in data.
# - Density plots are helpful for detecting multimodal distributions (multiple peaks).
# - Combining these tools aids in effective exploratory data analysis (EDA).

# ========================================================
# 📝 Practice Challenge:
# 1. Create a histogram for the "AudienceRatings" column with a binwidth of 5.
# 2. Add a density chart overlay to the histogram.
# 3. Use Genre as a fill color to compare distributions across categories.
# 4. Experiment with stacked density charts for "CriticRatings".