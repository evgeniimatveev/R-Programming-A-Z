# ===============================================
# 📖 Lecture: Data Types in R
# ===============================================

# In R, data can be stored in various types. The most common types are:
# 1️⃣ Integer
# 2️⃣ Double (numeric)
# 3️⃣ Complex
# 4️⃣ Character (string)
# 5️⃣ Logical (boolean)

# --- 🛠 `typeof()` function:
# To check the type of any variable, use the `typeof()` function.
# Example: typeof(variable_name)

# ===============================================
# 🔷 Example 1: Integer Type
# ===============================================

# Create an integer variable
x <- 2L  # The "L" tells R this is an integer
typeof(x)  # Check the type of the variable

# --- Expected Output:
# [1] "integer"

# ===============================================
# 🔷 Example 2: Double (Numeric) Type
# ===============================================

# Create a double variable
y <- 2.5  # This is a numeric value (default type is "double")
typeof(y)  # Check the type of the variable

# --- Expected Output:
# [1] "double"

# --- 📝 Note:
# Even if a number looks like an integer (e.g., 2), 
# if you don’t add "L", it will default to "double".

# Example:
z <- 2  # No "L", so this is treated as a double
typeof(z)  # Check the type

# ===============================================
# 🔷 Example 3: Complex Numbers
# ===============================================

# Create a complex variable
z <- 3 + 2i  # A complex number (real + imaginary part)
typeof(z)  # Check the type

# --- Expected Output:
# [1] "complex"

# ===============================================
# 🔷 Example 4: Character Type (Strings)
# ===============================================

# Create a character variable
a <- "one and two and three"  # This is a string
typeof(a)  # Check the type

# --- Expected Output:
# [1] "character"

# --- 📝 Note:
# Strings in R are always enclosed in double quotes ("").

# ===============================================
# 🔷 Example 5: Logical Type (Boolean)
# ===============================================

# Create logical variables
lg1 <- TRUE   # Logical value (TRUE)
lg2 <- FALSE  # Logical value (FALSE)

# Check the type of logical variables
typeof(lg1)  # Expected Output: "logical"
typeof(lg2)  # Expected Output: "logical"