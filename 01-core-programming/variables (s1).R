# ===============================================
# 📖 Lecture: Basic Data Types in R
# ===============================================

# --- 🔷 What are data types?
# In R, variables can store data of different types, such as:
# 1️⃣ Integer
# 2️⃣ Double (Numeric)
# 3️⃣ Complex
# 4️⃣ Character (String)
# 5️⃣ Logical (Boolean)

# You can check the data type of any variable using the `typeof()` function.

# ===============================================
# 🔷 Example 1: Integer Data Type
# ===============================================

# Define an integer variable
x <- 2L  # The 'L' indicates that the number is stored as an integer.
typeof(x)  # Returns the data type of 'x', which is "integer".

# --- 📝 Notes:
# - Without the 'L', the number would be stored as a double by default.
# - Integer data types are used for whole numbers.

# ===============================================
# 🔷 Example 2: Double (Numeric) Data Type
# ===============================================

# Define a numeric (double) variable
y <- 2.5  # In R, numeric variables default to 'double' if no 'L' is specified.
typeof(y)  # Returns "double" because 'y' is a floating-point number.

# --- 📝 Notes:
# - Even if a number looks like an integer (e.g., `2`), 
#   it will default to "double" unless explicitly defined as an integer using 'L'.
# - Double data types can store decimal values.

# ===============================================
# 🔷 Example 3: Complex Numbers
# ===============================================

# Define a complex number
z <- 3 + 2i  # 'i' represents the imaginary unit. R supports complex numbers natively.
typeof(z)  # Returns "complex".

# --- 📝 Notes:
# - Complex numbers consist of a real and an imaginary part.
# - The imaginary unit is represented by `i` in R.

# ===============================================
# 🔷 Example 4: Character (String) Data Type
# ===============================================

# Define a character (string) variable
a <- "one and two and three"  # Character data in R is enclosed in double quotes.
typeof(a)  # Returns "character".

# --- 📝 Notes:
# - Text (or string) data must be enclosed in double quotes ("").
# - Strings are useful for storing names, sentences, or any text-based data.

# ===============================================
# 🔷 Example 5: Logical (Boolean) Data Type
# ===============================================

# Define logical (Boolean) variables
lg1 <- T  # 'T' is a shorthand for TRUE in R.
lg2 <- F  # 'F' is a shorthand for FALSE.

# Check the type of logical variables
typeof(T)  # Returns "logical". Logical data type is used for TRUE/FALSE values.
typeof(F)  # Also returns "logical".

# --- 📝 Notes:
# - Logical data is used for conditions and comparisons (e.g., `4 < 5` returns TRUE).
# - Both `T` and `F` are shorthand for `TRUE` and `FALSE`, but using the full form is recommended for clarity.

# ===============================================
# 🔷 Additional Notes on R Data Types
# ===============================================

# 🔹 R is dynamically typed:
#    - You don’t need to explicitly declare the type of a variable.
#    - The type is determined automatically based on the value assigned.

# 🔹 Primary atomic data types in R:
#    - Logical
#    - Integer
#    - Double
#    - Complex
#    - Character

# 🔹 How to inspect data types:
#    - Use `typeof(variable_name)` to get the data type.
#    - The Environment tab (top right in RStudio) shows all defined variables and their values.

# ===============================================
# 🟢 Practice Exercises
# ===============================================

# --- 📝 Problem 1: Identify Data Types
# Predict the data type of the following variables, then check using `typeof()`:

# Variable definitions:
my_int <- 10L          # An integer
my_num <- 3.14159      # A numeric (double)
my_str <- "Learning R" # A string
my_bool <- TRUE        # A logical value
my_complex <- 5 + 6i   # A complex number

# Check the types:
typeof(my_int)       # "integer"
typeof(my_num)       # "double"
typeof(my_str)       # "character"
typeof(my_bool)      # "logical"
typeof(my_complex)   # "complex"

# --- 📝 Problem 2: Assign and Test
# 1. Create a variable `check` that stores the result of `4 < 10`.
# 2. Use `typeof()` to confirm the type of `check`.
# 3. Use `!` (Logical NOT) to negate the result.

# Solution:
check <- 4 < 10       # Comparison result (TRUE)
typeof(check)         # "logical"
negated_check <- !check  # Negates TRUE, resulting in FALSE
print(negated_check)  # Prints FALSE

# --- 📝 Problem 3: Dynamic Typing
# Assign the following values to the variable `x` and observe how the type changes:
# 1. `x <- 42`
# 2. `x <- "R Programming"`
# 3. `x <- 3 + 4i`
# Use `typeof(x)` after each assignment.

# Solution:
x <- 42               # "double"
typeof(x)

x <- "R Programming"  # "character"
typeof(x)

x <- 3 + 4i           # "complex"
typeof(x)

# ===============================================
# 🔵 Summary
# ===============================================

# 1️⃣ **Atomic Data Types**:
#    - `Logical`: TRUE, FALSE (e.g., `4 < 5`).
#    - `Integer`: Whole numbers (e.g., `2L`).
#    - `Double`: Numbers with decimals (e.g., `2.5`).
#    - `Complex`: Numbers with imaginary parts (e.g., `3 + 2i`).
#    - `Character`: Strings enclosed in double quotes (e.g., `"Hello"`).

# 2️⃣ **Functions for Inspection**:
#    - `typeof(variable)`: Returns the data type of a variable.
#    - The Environment tab in RStudio helps visualize variables and their types.

# 3️⃣ **Dynamic Typing**:
#    - R automatically assigns data types based on the value of the variable.

# --- End of Lecture ---