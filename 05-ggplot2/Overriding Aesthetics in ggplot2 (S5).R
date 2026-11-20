# ===============================================
# 📊 Lecture-Script: Overriding Aesthetics in ggplot2
# ===============================================

# --- 🔷 Introduction:
# In this lesson, we explore **aesthetic overrides** in ggplot2.
# Aesthetics include attributes like **color**, **size**, and **shape** that are mapped to variables or set manually.

# Key Topics:
# 1️⃣ Basic aesthetics: Mapping `color`, `size`, and `shape`.
# 2️⃣ Overriding aesthetics for individual layers.
# 3️⃣ Combining multiple layers with custom settings.

# ===============================================
# 🔷 Part 1: Basic Aesthetic Mapping
# ===============================================

# Load ggplot2 library
library(ggplot2)

# Load dataset
movies <- read.csv("Movie-Ratings (S5).csv")

# Rename columns for clarity
colnames(movies) <- c("Film", "Genre", "CriticRatings", "AudienceRatings", "BudgetMillion", "Year")

# View the dataset
head(movies)

# -----------------------------------------------
# 🔹 Mapping aesthetics to variables:
# Map x and y to `CriticRatings` and `AudienceRatings` with default points.
q <- ggplot(data = movies, 
            aes(x = CriticRatings, y = AudienceRatings, 
                color = Genre, size = BudgetMillion)) 

# Add points
q + geom_point()

# ===============================================
# 🔷 Part 2: Overriding Aesthetics
# ===============================================

# --- 🛠 Example 1: Override `size` aesthetics:
# Overriding `size` with another aesthetic value inside `aes()` for this specific layer.
q + geom_point(aes(size = CriticRatings))

# --- 🛠 Example 2: Override `color` aesthetics:
# Override `color` to use the BudgetMillion values.
q + geom_point(aes(colour = BudgetMillion))

# --- 🛠 Example 3: Manual aesthetic overrides:
# Apply a fixed `size` and add custom x-axis label.
q + geom_point(size = 3) + 
  xlab("Budget Millions $$$")

# ===============================================
# 🔷 Part 3: Adding Multiple Layers
# ===============================================

# --- 🛠 Example 4: Combine Points and Lines
# Add `geom_line()` to plot lines alongside points.
q + geom_line() + geom_point()

# --- 🛠 Example 5: Adjust `line size` for specific layers
q + geom_line(size = 1) + geom_point()

# --- 🛠 Example 6: Adding Titles and Labels
# Customize the plot with a title and axis labels.
q + geom_point() + 
  labs(title = "Critic Ratings vs Audience Ratings",
       x = "Critic Ratings",
       y = "Audience Ratings",
       color = "Movie Genre",
       size = "Budget (Millions)")

# ===============================================
# 🔷 Part 4: Advanced Overrides with Aesthetic Layers
# ===============================================

# --- 🛠 Example 7: Add a Custom Layer
# Add a custom layer with overridden aesthetics (size and color).
q + geom_point(aes(size = BudgetMillion, color = BudgetMillion)) +
  scale_color_gradient(low = "blue", high = "red") +
  labs(title = "Ratings with Budget Mapping",
       x = "Critic Ratings",
       y = "Audience Ratings")

# --- 🛠 Example 8: Experiment with `alpha` for transparency
# Set `alpha` to control transparency.
q + geom_point(aes(size = BudgetMillion, color = Genre), alpha = 0.6)

# ===============================================
# 🔷 Summary:
# ===============================================

# 1️⃣ Aesthetics like `color`, `size`, and `shape` can be **mapped to variables** or **set manually**.
# 2️⃣ Overrides allow different layers to have their own aesthetics.
# 3️⃣ Multiple layers like `geom_line` and `geom_point` can be combined for richer visuals.
# 4️⃣ Use `alpha` for transparency and `scale_color_gradient` for color scaling.

# --- End of Lecture 🚀