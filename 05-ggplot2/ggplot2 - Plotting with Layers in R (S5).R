# =======================================================
# 📊 Lecture-Script: ggplot2 - Plotting with Layers in R
# =======================================================

# 1️⃣ **Setup: Import Libraries and Data**
# -----------------------------------------
library(ggplot2)  # Load ggplot2 library for visualization

# Load the dataset (adjust path accordingly)
movies <- read.csv("Movie-Ratings (S5).csv")

# Inspect the data
head(movies)         # First few rows
tail(movies)         # Last few rows
str(movies)          # Structure of the data
summary(movies)      # Summary statistics

# Rename the columns for clarity
colnames(movies) <- c("Film", "Genre", "CriticRatings", 
                      "AudienceRatings", "BudgetmMillion", "Year")

# Convert 'Year' to a factor for categorical analysis
movies$Year <- factor(movies$Year)

# =======================================================
# 2️⃣ **Base Plot: Audience Ratings vs Critic Ratings**
# -----------------------------------------
# Create a base scatter plot with CriticRatings (x) and AudienceRatings (y)
ggplot(data = movies, aes(x = CriticRatings, y = AudienceRatings)) + 
  geom_point()

# Save the base plot object to reuse layers
P <- ggplot(data = movies, aes(x = CriticRatings, y = AudienceRatings))

# =======================================================
# 3️⃣ **Adding Layers: Points, Lines, and Combinations**
# -----------------------------------------
# Add points to the base plot
P + geom_point()

# Add lines to the base plot
P + geom_line()

# Combine points and lines together
P + geom_line() + geom_point()

# =======================================================
# 4️⃣ **Adding Aesthetics: Color, Size, and Transparency**
# -----------------------------------------
# Color points by 'Genre'
P + geom_point(aes(color = Genre))

# Adjust point size based on 'BudgetmMillion'
P + geom_point(aes(color = Genre, size = BudgetmMillion))

# Add transparency to avoid overlapping points (alpha = 0.6)
P + geom_point(aes(color = Genre, size = BudgetmMillion), alpha = 0.6)

# =======================================================
# 5️⃣ **Overriding Aesthetics**
# -----------------------------------------
# Override size for all points to a fixed value (e.g., size = 4)
P + geom_point(aes(color = Genre), size = 4)

# Override color to a fixed value (e.g., blue) and size based on data
P + geom_point(aes(size = BudgetmMillion), color = "blue")

# =======================================================
# 6️⃣ **Mapping vs Setting Aesthetics**
# -----------------------------------------
# Mapping: Data-driven aesthetics (e.g., size based on BudgetmMillion)
P + geom_point(aes(size = BudgetmMillion, color = Genre))

# Setting: Fixed aesthetics for all points (size = 5, color = "red")
P + geom_point(size = 5, color = "red")

# =======================================================
# 7️⃣ **Combining Multiple Geoms**
# -----------------------------------------
# Add a line layer with points for a clean visualization
P + 
  geom_point(aes(color = Genre, size = BudgetmMillion), alpha = 0.6) + 
  geom_line(color = "black", linetype = "dashed")  # Add black dashed lines

# =======================================================
# 8️⃣ **Customizing Titles, Labels, and Themes**
# -----------------------------------------
# Add titles, axis labels, and legend titles
P + 
  geom_point(aes(color = Genre, size = BudgetmMillion), alpha = 0.6) + 
  labs(
    title = "Critic Ratings vs Audience Ratings",
    x = "Critic Ratings",
    y = "Audience Ratings",
    color = "Movie Genre",
    size = "Budget (Millions)"
  )

# Apply a minimal theme for better aesthetics
P + 
  geom_point(aes(color = Genre, size = BudgetmMillion), alpha = 0.6) + 
  labs(
    title = "Critic Ratings vs Audience Ratings",
    x = "Critic Ratings",
    y = "Audience Ratings",
    color = "Movie Genre",
    size = "Budget (Millions)"
  ) +
  theme_minimal()

# =======================================================
# 9️⃣ **Practice Examples**
# -----------------------------------------
# 📝 Practice 1: Create a scatter plot with:
# - CriticRatings on the x-axis
# - AudienceRatings on the y-axis
# - Points colored by Genre and sized by BudgetmMillion

# 📝 Practice 2: Add transparency (alpha) and combine with a line layer.

# 📝 Practice 3: Customize the labels and use a different theme:
# - Try `theme_bw()`, `theme_light()`, or `theme_classic()`.

# =======================================================
# 🟢 **Key Takeaways**
# -----------------------------------------
# - Use `ggplot()` to initialize the plot.
# - Add layers with `geom_*()` functions.
# - Map aesthetics (color, size, alpha) to data variables with `aes()`.
# - Override aesthetics using fixed values.
# - Customize plots with `labs()` for titles and labels.
# - Use themes (e.g., `theme_minimal()`) to adjust visuals.

# --- End of Script 🚀 ---