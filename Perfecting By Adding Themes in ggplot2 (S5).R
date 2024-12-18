# ========================================================
# 📊 **Lecture-Script: Perfecting By Adding Themes in ggplot2**
# ========================================================

# 🔹 **Objective**:
# Learn to enhance ggplot visualizations with themes, axis labels, legends, and formatting 
# using a real dataset.

# ========================================================
# 🛠 **1. Load Libraries and Data**
# ========================================================
# Install and load required library
library(ggplot2)
getwd()  # Check current working directory
setwd("C:/Users/GAMING/OneDrive/Dokumente/R A-Z")  # Set your working directory
getwd()  # Verify the updated working directory



# 🔹 Load Movie Ratings dataset
movies <- read.csv("Movie-Ratings (S5).csv")

# Check structure of the dataset
str(movies)

# Rename columns for simplicity
colnames(movies) <- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "Year")

# ========================================================
# 🛠 **2. Basic Histogram**
# ========================================================
# 🔹 Create the base plot
h <- ggplot(data = movies, aes(x = BudgetMillions))

# 🔹 Add a histogram with colors by Genre
h <- h + geom_histogram(binwidth = 10, aes(fill = Genre), colour = "Black")

# Display the basic plot
print(h)

# ========================================================
# 🎨 **3. Adding Axis Labels**
# ========================================================
# 🔹 Add X and Y labels for clarity
h <- h +
  xlab("Movie Budgets (Millions)") +
  ylab("Number of Movies") +
  ggtitle("Movie Budget Distribution")

# Display the updated plot
print(h)

# ========================================================
# ✍️ **4. Formatting Titles and Axis Text**
# ========================================================
# 🔹 Use `theme()` to style axis titles and tick text
h <- h + 
  theme(axis.title.x = element_text(colour = "DarkGreen", size = 20),
        axis.title.y = element_text(colour = "DarkRed", size = 20),
        axis.text.x = element_text(size = 12),
        axis.text.y = element_text(size = 12),
        plot.title = element_text(colour = "DarkBlue", size = 25, face = "bold"))

# Display the formatted plot
print(h)

# ========================================================
# 🏷 **5. Formatting the Legend**
# ========================================================
# 🔹 Customize the legend title, text, and position
h <- h +
  theme(legend.title = element_text(size = 15, colour = "Blue"),
        legend.text = element_text(size = 12),
        legend.position = c(0.85, 0.7))

# Display the updated plot with legend formatting
print(h)

# ========================================================
# 🔍 **6. Combining All Formatting**
# ========================================================
# 🔹 Final Polished Histogram with All Customizations
h <- ggplot(data = movies, aes(x = BudgetMillions, fill = Genre)) +
  geom_histogram(binwidth = 10, colour = "Black") +
  xlab("Movie Budgets (Millions)") +
  ylab("Number of Movies") +
  ggtitle("Movie Budget Distribution") +
  theme(
    axis.title.x = element_text(colour = "DarkGreen", size = 20),
    axis.title.y = element_text(colour = "DarkRed", size = 20),
    axis.text.x = element_text(size = 12),
    axis.text.y = element_text(size = 12),
    plot.title = element_text(colour = "DarkBlue", size = 25, face = "bold"),
    legend.title = element_text(size = 15, colour = "Blue"),
    legend.text = element_text(size = 12),
    legend.position = c(0.85, 0.7)
  )

# Display the final polished plot
print(h)

# ========================================================
# 📝 **Summary**
# ========================================================
# 🔹 **What We Learned:**
# 1️⃣ Adding and customizing axis labels and titles.
# 2️⃣ Using `theme()` for professional formatting.
# 3️⃣ Styling legends for readability and moving their position.
# 4️⃣ Combining all enhancements to produce clean, informative plots.

# 🚀 Use these techniques to make any ggplot visualization **presentation-ready**!

# --- End of Script ---