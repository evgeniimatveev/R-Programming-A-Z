# hello.R
# Simple R quick flow demo

# 1. Create simple data frame
sales <- data.frame(
  country = c("US", "US", "DE", "DE", "FR"),
  revenue = c(100, 150, 80, 90, 70)
)

# 2. Aggregate average revenue by country
avg_revenue <- aggregate(revenue ~ country, data = sales, FUN = mean)

# 3. Print result
print("Average revenue by country:")
print(avg_revenue)
