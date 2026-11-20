# ========================================================
# 🛠 Load Libraries
# ========================================================
library(ggplot2)

# ========================================================
# 🌟 Introduction to Statistical Transformations
# ========================================================
# 🔹 Statistical transformations in ggplot2 apply calculations or summary statistics 
#    to your data before plotting.
# 🔹 Common transformations:
#    - Smoothing lines for trends.
#    - Boxplots for distributions.
#    - Combining plots with jitter for raw data visibility.
#
# Why is it important?  
# 📌 Makes patterns and trends easier to see.  
# 📌 Highlights summaries like medians, averages, and regression lines.  

# ========================================================
# 📈 Part 1: Scatter Plot with Smoothing Lines
# ========================================================
# 🔹 Use `geom_smooth()` to add trend lines to scatterplots.

# Base Plot: Scatterplot of CriticRating vs AudienceRating
u <- ggplot(data = movies, aes(x = CriticRating, y = AudienceRating, colour = Genre))

# 1️⃣ Add Smoothing Line (Default LOESS)
u + geom_point() +
  geom_smooth() +
  ggtitle("Scatter Plot with Smoothing Line (LOESS)") +
  theme_minimal()

# 2️⃣ Add Linear Regression Line
u + geom_point() +
  geom_smooth(method = "lm", se = FALSE, colour = "blue") +
  ggtitle("Scatter Plot with Linear Regression Line") +
  theme_light()

# ========================================================
# 📊 Part 2: Boxplots for Visualizing Distributions
# ========================================================
# 🔹 Use `geom_boxplot()` to summarize distributions: median, quartiles, and outliers.

# Base Plot: AudienceRating by Genre
v <- ggplot(data = movies, aes(x = Genre, y = AudienceRating, colour = Genre))

# 1️⃣ Basic Boxplot
v + geom_boxplot() +
  ggtitle("Boxplot of Audience Ratings by Genre") +
  theme_bw()

# 2️⃣ Adjust Boxplot Line Thickness
v + geom_boxplot(size = 1.2) +
  ggtitle("Boxplot with Adjusted Line Thickness") +
  theme_classic()

# ========================================================
# ✨ Part 3: Combining Boxplots with Jittered Points
# ========================================================
# 🔹 Add `geom_jitter()` to show individual data points without overlap.

# 1️⃣ Boxplot + Jittered Points
v + geom_boxplot(size = 1.2, alpha = 0.7) +
  geom_jitter(alpha = 0.4, colour = "black") +
  ggtitle("Boxplot with Jittered Points") +
  theme_minimal()

# 2️⃣ Adjust Transparency for Better Visibility
v + geom_boxplot(size = 1.2, alpha = 0.6) +
  geom_jitter(alpha = 0.5, colour = "grey") +
  ggtitle("Boxplot with Adjusted Transparency") +
  theme_light()

# ========================================================
# 🎯 Key Takeaways
# ========================================================
# 1️⃣ Use `geom_smooth()` to add smoothing lines (e.g., LOESS, regression) to scatterplots.  
# 2️⃣ Boxplots (`geom_boxplot()`) summarize data distributions, medians, and outliers.  
# 3️⃣ Combine jittered points (`geom_jitter()`) with boxplots to show raw data.  
# 4️⃣ Customize transparency (alpha) and line thickness (size) for clarity.  

# ========================================================
# 📝 Practice Exercise:
# ========================================================
# 1. Create a scatter plot with CriticRating and AudienceRating.  
# 2. Add smoothing lines using both LOESS and linear regression.  
# 3. Create boxplots for BudgetMillions by Genre.  
# 4. Combine boxplots with jittered points and adjust transparency.  

# ========================================================
# 🎓 End of Lecture: Statistical Transformations
# ========================================================