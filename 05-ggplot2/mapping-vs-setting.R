# ===============================================
# 📖 Lecture-Script: Mapping vs Setting in ggplot2
# ===============================================

# --- 🔷 Introduction
# In ggplot2, "Mapping" refers to assigning variables to aesthetics dynamically 
# (e.g., color, size, or shape) based on your dataset. 
# "Setting" is when you manually fix an aesthetic to a specific value.

# Let’s explore this concept through practical examples.

# ===============================================
# 🔷 Part 1: Basic Setup and Loading Data
# ===============================================

# Load required library
library(ggplot2)

# Import data
movies <- read.csv("data/movie-ratings.csv")

# Rename columns for clarity
colnames(movies) <- c("Film", "Genre", "CriticRatings", "AudienceRatings", "BudgetmMillion", "Year")

# Check the structure of the data
str(movies)

# ===============================================
# 🔷 Part 2: Mapping vs Setting
# ===============================================

# --- 🛠 Step 1: Mapping Colors Dynamically

# Mapping means assigning aesthetics to variables in the dataset
# Here, "Genre" dynamically changes the color
r <- ggplot(data = movies, aes(x = CriticRatings, y = AudienceRatings))

# Add points with colors mapped to "Genre"
r + geom_point(aes(colour = Genre)) 

# --- 🛠 Step 2: Setting a Fixed Color

# Setting means assigning a fixed color manually
# Here, all points are set to "DarkGreen"
r + geom_point(colour = "DarkGreen") 

# --- 🔎 Key Difference:
# Mapping uses `aes()` to assign data-driven aesthetics.
# Setting assigns constant aesthetics outside of `aes()`.

# ===============================================
# 🔷 Part 3: Mapping vs Setting for Size
# ===============================================

# --- 🛠 Step 3: Mapping Size Dynamically

# Mapping size to "BudgetmMillion"
r + geom_point(aes(size = BudgetmMillion))

# --- 🛠 Step 4: Setting a Fixed Size

# Setting the size to a fixed value (e.g., 10)
r + geom_point(size = 10)

# --- 🔎 Observations:
# - Use `aes(size = ...)` for data-driven changes.
# - Use `size = ...` for constant sizes.

# ===============================================
# 🔷 Part 4: Combining Mapping and Setting
# ===============================================

# Mapping color to "Genre" and size to "BudgetmMillion"
r + geom_point(aes(colour = Genre, size = BudgetmMillion))

# Setting transparency (alpha) to reduce clutter
r + geom_point(aes(colour = Genre, size = BudgetmMillion), alpha = 0.6)

# Adding a manual title to the chart
r + geom_point(aes(colour = Genre, size = BudgetmMillion), alpha = 0.6) +
  ggtitle("Audience Ratings vs Critic Ratings") +
  xlab("Critic Ratings") + ylab("Audience Ratings")

# ===============================================
# 🔷 Part 5: Common Mistakes and Errors
# ===============================================

# --- 🔴 Example of an Error:
# Combining setting and mapping incorrectly
# This will throw an error:
# r + geom_point(aes(colour = "DarkGreen"))

# --- 🟢 Correct Way:
# r + geom_point(colour = "DarkGreen")

# ===============================================
# 🔷 Summary
# ===============================================

# 🟢 **Key Takeaways:**
# 1️⃣ Mapping uses `aes()` to assign variables dynamically to aesthetics.
# 2️⃣ Setting fixes aesthetics to constant values.
# 3️⃣ Combine mapping and setting for powerful visualizations.
# 4️⃣ Always use `aes()` for data-driven changes, but place fixed aesthetics outside it.

# --- End of Lecture --- 🚀