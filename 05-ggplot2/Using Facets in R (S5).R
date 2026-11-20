# ========================================================
# 📊 **Lecture-Script: Using Facets in R
# ========================================================

# 🔹 Faceting splits data into multiple panels for easier visualization of subsets.

# ========================================================
# 🛠 **Load Libraries**
# ========================================================
library(ggplot2)

# Set and verify the working directory where your files are stored
getwd()  # Check current working directory
setwd("C:/Users/GAMING/OneDrive/Dokumente/R A-Z")  # Set your working directory
getwd()  # Verify the updated working directory

# ========================================================
# 📊 **Part 1: Faceting Histograms**
# ========================================================

# Load a dataset
movies <- read.csv("Movie-Ratings (S5).csv")  

# Rename columns for clarity
colnames(movies) <- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "Year")

# Base histogram plot
v <- ggplot(data = movies, aes(x = BudgetMillions))

# 1️⃣ Histogram without faceting
v + geom_histogram(binwidth = 10, aes(fill = Genre), colour = "black") +
  ggtitle("Basic Histogram")

# 2️⃣ Faceting using facet_wrap() by Genre
v + geom_histogram(binwidth = 10, aes(fill = Genre), colour = "black") +
  facet_wrap(~Genre) +
  ggtitle("Histogram Faceted by Genre") +
  theme_minimal()

# ========================================================
# 📊 **Part 2: Faceting Scatter Plots**
# ========================================================

# Base scatter plot
w <- ggplot(data = movies, aes(x = CriticRating, y = AudienceRating, colour = Genre))

# 1️⃣ Basic Scatter Plot
w + geom_point(size = 3) + ggtitle("Basic Scatter Plot")

# 2️⃣ Faceting with facet_grid() by rows (Genre)
w + geom_point(size = 3) +
  facet_grid(Genre ~ .) +
  ggtitle("Scatter Plot Faceted by Genre (Rows)") +
  theme_minimal()

# 3️⃣ Faceting with facet_grid() by columns (Year)
w + geom_point(size = 3) +
  facet_grid(. ~ Year) +
  ggtitle("Scatter Plot Faceted by Year (Columns)") +
  theme_minimal()

# ========================================================
# 📊 **Part 3: Combining Facets with Two Variables**
# ========================================================

# Faceting both rows (Genre) and columns (Year)
w + geom_point(size = 3) +
  facet_grid(Genre ~ Year) +
  ggtitle("Scatter Plot Faceted by Genre and Year") +
  theme_light()

# ========================================================
# 📊 **Part 4: Flexible Faceting with Scales**
# ========================================================

# Adjusting scales to allow independent axes
v + geom_histogram(binwidth = 10, aes(fill = Genre), colour = "black") +
  facet_wrap(~Genre, scales = "free") +
  ggtitle("Faceted Histogram with Free Scales") +
  theme_minimal()

# ========================================================
# 📝 **Summary**
# ========================================================

# 🟢 **Key Takeaways:**
# 1️⃣ Use `facet_wrap()` for one variable (e.g., Genre).
# 2️⃣ Use `facet_grid()` for two variables (e.g., Genre ~ Year).
# 3️⃣ Adjust scales with `scales = "free"` to allow independent axis ranges.
# 4️⃣ Faceting makes it easy to compare subsets of data within a single plot.

# --- End of Lecture ---