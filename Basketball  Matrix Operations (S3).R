# ===============================================
# 🏀 Basketball Data Analysis: Matrix Operations
# ===============================================

# --- 🔷 Introduction
# In this script, we explore matrix operations using real basketball data.  
# We'll calculate per-game metrics, player efficiency, and highlight R's ability to analyze data through custom examples.  

# --- 🛠 Data Preparation:
# The provided dataset includes matrices for games, field goals, minutes played, etc.  
# Players and seasons are stored as row and column names, respectively.  
# Execute all commands to load the data before starting!  

# ===============================================
# 🔷 Part 1: Basic Matrix Operations
# ===============================================

# --- 🛠 Example 1: Total Field Goals Per Game
FieldGoalsPerGame <- round(FieldGoals / Games, 1)
print(FieldGoalsPerGame)
# Key Insight: This matrix shows how many field goals each player scored per game on average per season.

# --- 🛠 Example 2: Field Goal Attempts Per Game
FieldGoalAttemptsPerGame <- round(FieldGoalAttempts / Games, 1)
print(FieldGoalAttemptsPerGame)

# --- 🛠 Example 3: Minutes Played Per Game
MinutesPlayedPerGame <- round(MinutesPlayed / Games, 1)
print(MinutesPlayedPerGame)

# --- 🛠 Example 4: Efficiency - Field Goals per Minute
FieldGoalsPerMinute <- round(FieldGoals / MinutesPlayed, 3)
print(FieldGoalsPerMinute)
# Key Insight: Higher values indicate better scoring efficiency.

# ===============================================
# 🔷 Part 2: Advanced Analysis
# ===============================================

# --- 🛠 Example 5: Identifying Player Trends
# How did "ChrisPaul" perform in 2011?
ChrisPaul_2011 <- FieldGoals["ChrisPaul", "2011"] / Games["ChrisPaul", "2011"]
print(paste("Chris Paul's average field goals per game in 2011: ", ChrisPaul_2011))

# --- 🛠 Example 6: Player Comparison
# Compare "LeBronJames" and "KevinDurant" for the 2012 season.
Comparison_2012 <- FieldGoals[c("LeBronJames", "KevinDurant"), "2012"]
print(Comparison_2012)

# --- 🛠 Example 7: Best Field Goal Percentage per Player
FieldGoalPercentage <- round((FieldGoals / FieldGoalAttempts) * 100, 1)
BestFGPercentage <- apply(FieldGoalPercentage, 1, max)
print(BestFGPercentage)
# Key Insight: This shows each player's best shooting percentage across all seasons.

# ===============================================
# 🔷 Part 3: Visualizations with ggplot2
# ===============================================

library(ggplot2)

# --- 🛠 Example 8: Visualization of Player's Performance Over Time
# Field Goals per Season for "LeBronJames"
LeBron_FG <- data.frame(
  Season = colnames(FieldGoals),
  FieldGoals = FieldGoals["LeBronJames", ]
)

ggplot(LeBron_FG, aes(x = Season, y = FieldGoals, group = 1)) +
  geom_line(color = "blue", size = 1) +
  geom_point(color = "red", size = 2) +
  labs(title = "LeBron James: Field Goals Over Seasons", x = "Season", y = "Field Goals") +
  theme_minimal()

# --- 🛠 Example 9: Bar Chart for Field Goals per Game (2014)
FG_2014 <- FieldGoalsPerGame[, "2014"]
FG_2014_df <- data.frame(
  Player = rownames(FieldGoals),
  FieldGoalsPerGame = FG_2014
)

ggplot(FG_2014_df, aes(x = reorder(Player, -FieldGoalsPerGame), y = FieldGoalsPerGame)) +
  geom_bar(stat = "identity", fill = "darkgreen") +
  coord_flip() +
  labs(title = "Field Goals Per Game in 2014", x = "Player", y = "Field Goals Per Game") +
  theme_minimal()

# ===============================================
# 🔷 Part 4: Practice Exercises
# ===============================================

# --- 📝 Exercise 1: Player Efficiency
# Calculate the average points per game (Points / Games) for each player.
# Identify which player had the highest average points per game in 2014.

# --- 📝 Exercise 2: Trend Analysis
# Create a trend line for "KobeBryant" showing his MinutesPlayed per season.

# --- 📝 Exercise 3: Team Analysis
# Find the player with the highest total FieldGoals across all seasons.
# Visualize this using ggplot2.

# ===============================================
# 🔵 Summary
# ===============================================

# 🟢 **Key Takeaways:**
# 1️⃣ Matrix operations in R enable complex analysis like efficiency metrics, trend detection, and comparisons.  
# 2️⃣ ggplot2 adds a powerful visualization layer for better insights.  
# 3️⃣ Custom calculations (like per-game averages) can reveal hidden trends in the data.  

# --- End of Lecture --- 🚀