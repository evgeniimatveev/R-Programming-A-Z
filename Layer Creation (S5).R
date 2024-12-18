# Load ggplot2 library
library(ggplot2)

# ========================================================
# Part 1: Base Layer Creation 🛠
# ========================================================

# Base Plot for Audience Ratings
t <- ggplot(data = movies, aes(x = AudienceRatings))

# Add a Basic Histogram
t + geom_histogram(binwidth = 10, fill = "white", colour = "blue") +
  ggtitle("Basic Histogram: Audience Ratings")

# ========================================================
# Part 2: Overriding Aesthetics 🎨
# ========================================================

# Another Base Plot with Custom Overrides
t <- ggplot(data = movies)

# Custom Histogram - Add Aesthetic Overrides
t + geom_histogram(binwidth = 10, 
                   aes(x = AudienceRatings), 
                   fill = "white", colour = "blue") +
  ggtitle("Histogram with Overridden Aesthetics")

# ========================================================
# Part 3: Adding Flexibility with Layers 🔄
# ========================================================

# Create Multiple Histograms with Layers

# 1. Histogram for Audience Ratings
t + geom_histogram(binwidth = 10,
                   aes(x = AudienceRatings), 
                   fill = "white", colour = "blue") +
  ggtitle("Histogram: Audience Ratings")

# 2. Histogram for Critic Ratings
t + geom_histogram(binwidth = 10,
                   aes(x = CriticRatings), 
                   fill = "white", colour = "red") +
  ggtitle("Histogram: Critic Ratings")

# ========================================================
# Part 4: Starting Layer Approach 🚀
# ========================================================

# Step-by-Step Adding Layers
t <- ggplot(data = movies, aes(x = AudienceRatings))

# First Layer: Add Histogram
t + geom_histogram(binwidth = 10, fill = "white", colour = "blue") +
  ggtitle("Layer 1: Histogram")

# ========================================================
# Part 5: Combine Aesthetic Settings ⚙️
# ========================================================

# Overlay Histogram with Additional Customizations
t + geom_histogram(binwidth = 10, 
                   aes(y = ..density..), 
                   fill = "white", colour = "blue") +
  geom_density(colour = "red", size = 1.2) +
  ggtitle("Histogram with Density Overlay")

# ========================================================
# Part 6: Practice Challenge 🔥
# ========================================================

# 1. Add a histogram for "BudgetMillion" with `binwidth = 20`.
# 2. Overlay it with a **density curve** colored in green.
# 3. Add meaningful titles and labels.

t <- ggplot(data = movies, aes(x = BudgetMillion))

t + geom_histogram(binwidth = 20, fill = "lightgrey", colour = "black") +
  geom_density(colour = "green", size = 1) +
  ggtitle("Budget Million Histogram with Density Curve") +
  xlab("Budget in Millions") +
  ylab("Density")
