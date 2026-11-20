# ===============================================
# 📖 Lecture-Script: Building Data Frames in R
# ===============================================

# --- 🔷 Introduction
# Data frames are the most common structure for storing tabular data in R.
# They are similar to tables or spreadsheets, where each column represents a variable
# and each row represents an observation.

# In this lesson, we will:
# 1️⃣ Build a data frame from vectors.
# 2️⃣ Rename columns for clarity.
# 3️⃣ View, subset, and explore data.

# ===============================================
# 🔷 Part 1: Creating Vectors
# ===============================================

# --- 🛠 Step 1: Define Vectors for the Dataset

# Countries
Countries_2012_Dataset <- c("Aruba","Afghanistan","Angola","Albania","United Arab Emirates","Argentina","Armenia","Antigua and Barbuda","Australia","Austria","Azerbaijan","Burundi","Belgium","Benin","Burkina Faso","Bangladesh","Bulgaria","Bahrain","Bahamas, The","Bosnia and Herzegovina","Belarus","Belize","Bermuda","Bolivia","Brazil","Barbados","Brunei Darussalam","Bhutan","Botswana","Central African Republic","Canada","Switzerland","Chile","China","Cote d'Ivoire","Cameroon","Congo, Rep.","Colombia","Comoros","Cabo Verde","Costa Rica","Cuba","Cayman Islands","Cyprus","Czech Republic","Germany","Djibouti","Denmark","Dominican Republic","Algeria","Ecuador","Egypt, Arab Rep.","Eritrea","Spain","Estonia","Ethiopia","Finland","Fiji","France","Micronesia, Fed. Sts.","Gabon","United Kingdom","Georgia","Ghana","Guinea","Gambia, The","Guinea-Bissau","Equatorial Guinea","Greece","Grenada","Greenland","Guatemala","Guam","Guyana","Hong Kong SAR, China","Honduras","Croatia","Haiti","Hungary","Indonesia","India","Ireland","Iran, Islamic Rep.","Iraq","Iceland","Israel","Italy","Jamaica","Jordan","Japan","Kazakhstan","Kenya","Kyrgyz Republic","Cambodia","Kiribati","Korea, Rep.","Kuwait","Lao PDR","Lebanon","Liberia","Libya","St. Lucia","Liechtenstein","Sri Lanka","Lesotho","Lithuania","Luxembourg","Latvia","Macao SAR, China","Morocco","Moldova","Madagascar","Maldives","Mexico","Macedonia, FYR","Mali","Malta","Myanmar","Montenegro","Mongolia","Mozambique","Mauritania","Mauritius","Malawi","Malaysia","Namibia","New Caledonia","Niger","Nigeria","Nicaragua","Netherlands","Norway","Nepal","New Zealand","Oman","Pakistan","Panama","Peru","Philippines","Papua New Guinea","Poland","Puerto Rico","Portugal","Paraguay","French Polynesia","Qatar","Romania","Russian Federation","Rwanda","Saudi Arabia","Sudan","Senegal","Singapore","Solomon Islands","Sierra Leone","El Salvador","Somalia","Serbia","South Sudan","Sao Tome and Principe","Suriname","Slovak Republic","Slovenia","Sweden","Swaziland","Seychelles","Syrian Arab Republic","Chad","Togo","Thailand","Tajikistan","Turkmenistan","Timor-Leste","Tonga","Trinidad and Tobago","Tunisia","Turkey","Tanzania","Uganda","Ukraine","Uruguay","United States","Uzbekistan","St. Vincent and the Grenadines","Venezuela, RB","Virgin Islands (U.S.)","Vietnam","Vanuatu","West Bank and Gaza","Samoa","Yemen, Rep.","South Africa","Congo, Dem. Rep.","Zambia","Zimbabwe")

# Codes
Codes_2012_Dataset <- c("ABW","AFG","AGO","ALB","ARE","ARG","ARM","ATG","AUS","AUT","AZE","BDI","BEL","BEN","BFA","BGD","BGR","BHR","BHS","BIH","BLR","BLZ","BMU","BOL","BRA","BRB","BRN","BTN","BWA","CAF","CAN","CHE","CHL","CHN","CIV","CMR","COG","COL","COM","CPV","CRI","CUB","CYM","CYP","CZE","DEU","DJI","DNK","DOM","DZA","ECU","EGY","ERI","ESP","EST","ETH","FIN","FJI","FRA","FSM","GAB","GBR","GEO","GHA","GIN","GMB","GNB","GNQ","GRC","GRD","GRL","GTM","GUM","GUY","HKG","HND","HRV","HTI","HUN","IDN","IND","IRL","IRN","IRQ","ISL","ISR","ITA","JAM","JOR","JPN","KAZ","KEN","KGZ","KHM","KIR","KOR","KWT","LAO","LBN","LBR","LBY","LCA","LIE","LKA","LSO","LTU","LUX","LVA","MAC","MAR","MDA","MDG","MDV","MEX","MKD","MLI","MLT","MMR","MNE","MNG","MOZ","MRT","MUS","MWI","MYS","NAM","NCL","NER","NGA","NIC","NLD","NOR","NPL","NZL","OMN","PAK","PAN","PER","PHL","PNG","POL","PRI","PRT","PRY","PYF","QAT","ROU","RUS","RWA","SAU","SDN","SEN","SGP","SLB","SLE","SLV","SOM","SRB","SSD","STP","SUR","SVK","SVN","SWE","SWZ","SYC","SYR","TCD","TGO","THA","TJK","TKM","TLS","TON","TTO","TUN","TUR","TZA","UGA","UKR","URY","USA","UZB","VCT","VEN","VIR","VNM","VUT","PSE","WSM","YEM","ZAF","COD","ZMB","ZWE")

# Regions
Regions_2012_Dataset <- c("The Americas","Asia","Africa","Europe","Middle East","The Americas","Asia","The Americas","Oceania","Europe","Asia","Africa","Europe","Africa","Africa","Asia","Europe","Middle East","The Americas","Europe","Europe","The Americas","The Americas","The Americas","The Americas","The Americas","Asia","Asia","Africa","Africa","The Americas","Europe","The Americas","Asia","Africa","Africa","Africa","The Americas","Africa","Africa","The Americas","The Americas","The Americas","Europe","Europe","Europe","Africa","Europe","The Americas","Africa","The Americas","Africa","Africa","Europe","Europe","Africa","Europe","Oceania","Europe","Oceania","Africa","Europe","Asia","Africa","Africa","Africa","Africa","Africa","Europe","The Americas","The Americas","The Americas","Oceania","The Americas","Asia","The Americas","Europe","The Americas","Europe","Asia","Asia","Europe","Middle East","Middle East","Europe","Middle East","Europe","The Americas","Middle East","Asia","Asia","Africa","Asia","Asia","Oceania","Asia","Middle East","Asia","Middle East","Africa","Africa","The Americas","Europe","Asia","Africa","Europe","Europe","Europe","Asia","Africa","Europe","Africa","Asia","The Americas","Europe","Africa","Europe","Asia","Europe","Asia","Africa","Africa","Africa","Africa","Asia","Africa","Oceania","Africa","Africa","The Americas","Europe","Europe","Asia","Oceania","Middle East","Asia","The Americas","The Americas","Asia","Oceania","Europe","The Americas","Europe","The Americas","Oceania","Middle East","Europe","Europe","Africa","Middle East","Africa","Africa","Asia","Oceania","Africa","The Americas","Africa","Europe","Africa","Africa","The Americas","Europe","Europe","Europe","Africa","Africa","Middle East","Africa","Africa","Asia","Asia","Asia","Asia","Oceania","The Americas","Africa","Europe","Africa","Africa","Europe","The Americas","The Americas","Asia","The Americas","The Americas","The Americas","Asia","Oceania","Middle East","Oceania","Middle East","Africa","Africa","Africa","Africa")

# ===============================================
# 🔷 Part 2: Creating a Data Frame
# ===============================================

# --- 🛠 Step 2: Combine Vectors into a Data Frame
mydf <- data.frame(Countries_2012_Dataset, 
                   Codes_2012_Dataset, 
                   Regions_2012_Dataset)

# --- View the Data Frame
print(head(mydf))   # View the first few rows
print(tail(mydf))   # View the last few rows
print(dim(mydf))    # Check dimensions (rows and columns)

# --- 🛠 Key Insight:
# Each column in a data frame corresponds to a vector.

# ===============================================
# 🔷 Part 3: Renaming Columns
# ===============================================

# --- 🛠 Step 3: Rename Column Names for Clarity
colnames(mydf) <- c("Country", "Code", "Region")

# --- View Updated Data Frame
print(head(mydf))

# ===============================================
# 🔷 Part 4: Subsetting Data Frames
# ===============================================

# --- 🛠 Step 4: Subset Rows and Columns
# Subset the first 5 rows
subset1 <- mydf[1:5, ]
print(subset1)

# Subset specific columns
subset2 <- mydf[, c("Country", "Region")]
print(subset2)

# --- 🛠 Example: Filter Rows by Condition
# Filter countries in "The Americas" region
americas <- mydf[mydf$Region == "The Americas", ]
print(americas)

# --- 🛠 Key Insight:
# Use `[]` indexing to subset rows and columns efficiently.

# ===============================================
# 🔷 Part 5: Exploring Data Frames
# ===============================================

# --- 🛠 Step 5: Explore the Data Frame
print(str(mydf))      # View structure of the data frame
print(summary(mydf))  # Summary statistics for all variables

# --- 🛠 Additional Exploration
# Count the number of countries by region
region_counts <- table(mydf$Region)
print(region_counts)

# ===============================================
# 🔷 Part 6: Adding and Removing Data
# ===============================================

# --- 🛠 Step 6: Add a New Column
# Add a Population column (example data)
Population <- c(105000, 38000000, 32800000, 2900000, 
                9890000, 45100000, 2960000, 25000000, 
                8900000, 213000000, 38000000)


mydf$Population <- rep(105000, nrow(mydf))
print(head(mydf))


set.seed(123)  
mydf$Population <- sample(100000:50000000, nrow(mydf), replace = TRUE)
print(head(mydf))

# --- 🛠 Step 7: Remove a Column
# Remove the Population column
mydf$Population <- NULL
print(head(mydf))

# ===============================================
# 🔷 Part 7: Combining Data Frames
# ===============================================

# --- 🛠 Example: Add Another Data Frame
# Repeating GDP values to match the length of the country dataset
GDP <- rep(c(29.8, 20.4, 2.2, 14.6, 40.7, 10.3, 4.9, 55.6, 48.7, 12.5, 52.0), length.out = length(Countries_2012_Dataset))

# Creating a new data frame with the repeated GDP values
gdp_df <- data.frame(Country = Countries_2012_Dataset, GDP)

# Displaying the first few rows of the GDP data frame
print(head(gdp_df))



# Generating random GDP values for 195 countries between 2 and 60
set.seed(123)  # For reproducibility
GDP <- runif(n = length(Countries_2012_Dataset), min = 2, max = 60)

# Creating a new data frame with random GDP values
gdp_df <- data.frame(Country = Countries_2012_Dataset, GDP)

# Displaying the first few rows of the GDP data frame
print(head(gdp_df))


# --- 🛠 Key Insight:
# Use `merge()` to combine data frames on a common column.

# ===============================================
# 🔷 Part 8: Practice Exercises
# ===============================================

# --- 📝 Exercise 1: Build a Data Frame
# Create a data frame with the following vectors:
# - City names
# - Population
# - Country

# --- 📝 Exercise 2: Subsetting and Filtering
# 1. Subset the first 10 rows of the data frame.
# 2. Filter rows where Region == "Asia".

# --- 📝 Exercise 3: Adding New Columns
# Add a new column to your data frame for GDP values.

# --- 📝 Exercise 4: Combine Data Frames
# Merge two data frames on a common column (like "Country").

# ===============================================
# 🔵 Summary
# ===============================================

# 🟢 **Key Takeaways:**
# 1️⃣ A data frame combines multiple vectors into a tabular structure.
# 2️⃣ Columns can be renamed, added, or removed.
# 3️⃣ Use indexing (`[]`) to subset rows and columns.
# 4️⃣ Use `merge()` to combine data frames on common columns.
# 5️⃣ Explore the structure with `str()`, `summary()`, and table functions.

# --- End of Lecture --- 🚀