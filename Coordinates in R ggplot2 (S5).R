# ========================================================
# 📊 Lecture-Script: Coordinates in R ggplot2
# ========================================================

# 🔹 Understanding coordinates:
# - Control zoom, limits, and axis scales for focused visualizations.

# ========================================================
# 🛠 Load Libraries and Data
# ========================================================
library(ggplot2)



# Set and verify the working directory where your files are stored
getwd()  # Check current working directory
setwd("C:/Users/GAMING/OneDrive/Dokumente/R A-Z")  # Set your working directory
getwd()  # Verify the updated working directory

# Import dataset
movies <- read.csv("Movie-Ratings (S5).csv")

# Rename columns for better clarity
colnames(movies) <- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "Year")

# Check structure of the dataset
str(movies)

# ========================================================
# 🔷 Part 1: Basic ggplot Setup
# ========================================================
# Base scatterplot with Critic vs Audience Ratings
m <- ggplot(data = movies, aes(x = CriticRating, y = AudienceRating,
                               size = BudgetMillions, colour = Genre))

# Basic plot
m + geom_point() + ggtitle("Basic Scatter Plot: Critic vs Audience Ratings")

# ========================================================
# 🔷 Part 2: Using xlim() and ylim() for Axis Limits
# ========================================================
# 1️⃣ Setting Limits for X and Y Axes
m + geom_point() + 
  xlim(50, 100) + ylim(50, 100) +
  ggtitle("Zoomed-In Plot with xlim and ylim")

# 🎯 Insight: xlim() and ylim() remove data points outside the range.

# ========================================================
# 🔷 Part 3: coord_cartesian() for Zooming
# ========================================================
# 2️⃣ Zoom in without removing data points
m + geom_point() +
  coord_cartesian(xlim = c(50, 100), ylim = c(50, 100)) +
  ggtitle("Zoomed-In Plot with coord_cartesian")

# 🎯 coord_cartesian keeps all data points but adjusts the visible range.

# ========================================================
# 🔷 Part 4: Adjusting Limits for Histograms
# ========================================================
# 3️⃣ Histogram Example with Limits
n <- ggplot(data = movies, aes(x = BudgetMillions, fill = Genre))

# Using xlim() and ylim()
n + geom_histogram(binwidth = 10, colour = "Black") + 
  xlim(0, 100) + ylim(0, 50) +
  ggtitle("Histogram with Axis Limits")

# Using coord_cartesian()
n + geom_histogram(binwidth = 10, colour = "Black") + 
  coord_cartesian(ylim = c(0, 50)) +
  ggtitle("Histogram with coord_cartesian")

# ========================================================
# 🔷 Part 5: Combining Smooth Lines and Coordinates
# ========================================================
# 4️⃣ Facet Grid with Smooth Lines
m + geom_point(aes(size = BudgetMillions)) +
  geom_smooth() +
  facet_grid(Genre ~ Year) +
  coord_cartesian(ylim = c(0, 100)) +
  ggtitle("Faceted Plot with Smooth Lines and Zoom")

# ========================================================
# 📝 Summary
# ========================================================
# - **xlim() / ylim()**: Set fixed axis limits (removes data outside range).
# - **coord_cartesian()**: Zooms into a range but keeps all data.
# - Use **coord_cartesian** for better zoom without losing information.

# 🎯 Practice:
# - Create a scatterplot of AudienceRatings vs BudgetMillions.
# - Use xlim(), ylim(), and coord_cartesian() to zoom and adjust axis ranges.

# ========================================================
# 🚀 End of Lecture
# ========================================================
