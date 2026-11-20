#  Advanced Customizations with ggplot2

# Load necessary libraries
library(ggplot2)
library(dplyr)
library(reshape2)

# 1️⃣ Ensure the datasets are ready
# Create a data frame for LeBron's Field Goals (example data)
LeBron_FG <- data.frame(
  Season = colnames(FieldGoals),  # Extract seasons as column names
  FieldGoals = FieldGoals["LeBronJames", ]  # Extract LeBron's field goals
)

# --- 🛠 Example 5: Customizing Themes and Labels
ggplot(LeBron_FG, aes(x = Season, y = FieldGoals, group = 1)) +
  geom_line(color = "purple", linewidth = 1) +
  geom_point(color = "orange", size = 3) +
  labs(
    title = "LeBron James: Field Goals Performance",
    subtitle = "Analysis of Field Goals Over Seasons",
    x = "Season (Year)",
    y = "Field Goals Scored",
    caption = "Data Source: Basketball Dataset"
  ) +
  theme_minimal(base_size = 12) +
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold"),
    plot.subtitle = element_text(hjust = 0.5, face = "italic"),
    axis.text.x = element_text(angle = 45, hjust = 1)
  )

# 2️⃣ Field Goals Per Game for 2014
FG_2014 <- round(FieldGoals[ , "2014"] / Games[ , "2014"], 1)  # Per game calculation
FG_2014_df <- data.frame(
  Player = rownames(FieldGoals), 
  FieldGoalsPerGame = FG_2014
)

# --- 🛠 Example 6: Boxplot with Multiple Groups
# Although boxplots are not directly applicable here (since we don't have multiple distributions per player),
# I corrected this to display a **bar chart** for clearer visualization of 2014 performance.

ggplot(FG_2014_df, aes(x = reorder(Player, -FieldGoalsPerGame), y = FieldGoalsPerGame, fill = Player)) +
  geom_bar(stat = "identity", show.legend = FALSE) +
  labs(
    title = "Field Goals Per Game (2014) - Bar Chart",
    x = "Player",
    y = "Field Goals Per Game"
  ) +
  theme_light() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# 3️⃣ Reshape data for multiple players and seasons
FG_PerPlayer <- as.data.frame(FieldGoals / Games)  # Calculate per game stats
FG_PerPlayer$Season <- colnames(FieldGoals)  # Add seasons as a column
FG_PerPlayer_long <- reshape2::melt(FG_PerPlayer, id.vars = "Season", variable.name = "Player", value.name = "FieldGoalsPerGame")

# --- 🛠 Example 9: Faceted Line Plot for All Players
ggplot(FG_PerPlayer_long, aes(x = Season, y = FieldGoalsPerGame, group = Player, color = Player)) +
  geom_line() +
  facet_wrap(~Player, ncol = 3, scales = "free_y") +
  labs(
    title = "Field Goals Per Game (2005-2014)",
    x = "Season",
    y = "Field Goals Per Game"
  ) +
  theme_minimal()