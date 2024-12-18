===============================================
  # 🎓 Lecture-Script: Data Preparation and Cleaning in R
  # ===============================================

# --- 🛠 Step 1: Set Your Working Directory
# Set and verify the working directory where your files are stored
getwd()  # Check current working directory
setwd("C:/Users/GAMING/OneDrive/Dokumente/R A-Z")  # Set your working directory
getwd()  # Verify the updated working directory

# ===============================================
# 🛠 Step 2: Importing Data
# Load the dataset into R using `read.csv()`
movies <- read.csv("Movie-Ratings (S5).csv")  

# Preview the dataset
head(movies)   # View the first few rows of the dataset
tail(movies)   # View the last few rows of the dataset

# ===============================================
# 🛠 Step 3: Renaming Columns
# Clean and rename column names for better readability
colnames(movies) <- c("Film", "Genre", "CriticRatings", "AudienceRatings", 
                      "BudgetMillion", "Year")

# Verify the updated column names
head(movies)  # Check the first few rows with updated column names

# ===============================================
# 🛠 Step 4: Exploring the Data
# Examine the structure and summary of the dataset
str(movies)       # Check the structure of the dataset (types of columns)
summary(movies)   # Summary statistics (mean, median, etc.)

# --- 🔎 Key Notes:
# - `str()` reveals data types (e.g., numeric, character, factor).
# - `summary()` shows descriptive statistics for numeric columns 
#   and counts for categorical columns.

# ===============================================
# 🛠 Step 5: Converting Columns to Factors
# Convert the "Year" column to a factor, as it represents categories

# Convert Year to factor
movies$Year <- factor(movies$Year)

# Verify the changes
str(movies)    # Check the updated structure of the dataset
levels(movies$Year)  # View the levels (unique values) of the Year column

# --- 🔎 Why Use Factors?
# Factors are efficient for storing categorical data 
# and useful for grouped analysis and visualizations.

# ===============================================
# 🛠 Step 6: Handling Missing Values
# Identify and clean missing data

# Check for missing values
sum(is.na(movies))           # Total count of missing values
colSums(is.na(movies))       # Missing values per column

# Remove rows with missing values
movies_clean <- na.omit(movies)  # Create a clean dataset without NAs

# Verify the clean dataset
summary(movies_clean)  # Check the summary after cleaning

# ===============================================
# 🛠 Step 7: Filtering and Subsetting Data
# Subset data to analyze specific categories or criteria

# Example 1: Filter movies released in 2009
movies_2009 <- movies_clean[movies_clean$Year == 2009, ]
head(movies_2009)

# Example 2: Filter movies with Audience Ratings greater than 80
popular_movies <- movies_clean[movies_clean$AudienceRatings > 80, ]
head(popular_movies)

# Example 3: Filter movies by Genre (e.g., "Comedy")
comedy_movies <- movies_clean[movies_clean$Genre == "Comedy", ]
head(comedy_movies)

# ===============================================
# 🛠 Step 8: Adding New Columns
# Example: Add a new column for "Profit" as BudgetMillion * 2

movies_clean$Profit <- movies_clean$BudgetMillion * 2
head(movies_clean)  # Verify the new column

# ===============================================
# 🛠 Step 9: Sorting Data
# Use `order()` to sort the dataset by specific columns

# Sort movies by "BudgetMillion" in descending order
movies_sorted <- movies_clean[order(-movies_clean$BudgetMillion), ]
head(movies_sorted)

# Sort movies by "CriticRatings" and "AudienceRatings"
movies_sorted2 <- movies_clean[order(-movies_clean$CriticRatings, 
                                     -movies_clean$AudienceRatings), ]
head(movies_sorted2)

# ===============================================
# 🛠 Step 10: Combining and Saving Clean Data
# Example: Save the cleaned and sorted data to a new CSV file

write.csv(movies_clean, "Cleaned_Movie_Ratings.csv", row.names = FALSE)

# --- End of Script 🚀 ---
# ===============================================