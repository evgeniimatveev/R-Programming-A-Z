# ===============================================
# 📖 Lecture: Comparison and Logical Operators in R
# ===============================================

# --- 🔷 What are comparison operators?
# Comparison operators in R are used to compare values.
# The result of a comparison is a **logical value**: TRUE or FALSE.

# ===============================================
# 🔷 Comparison Operators
# ===============================================

# --- 🟢 Less than (<)
4 < 5  # This checks if 4 is less than 5. The result is TRUE.

# --- 🟢 Greater than (<)
100 < 10  # This checks if 100 is less than 10. The result is FALSE.

# --- 🟢 Equality (==)
4 == 5  # Double equals (==) checks if 4 is equal to 5. The result is FALSE.

# --- 🟢 Not equal (!=)
4 != 5  # This checks if 4 is NOT equal to 5. The result is TRUE.

# --- 🟢 Greater than (>)
5 > 3  # This checks if 5 is greater than 3. The result is TRUE.

# --- 🟢 Less than or equal to (<=)
5 <= 5  # This checks if 5 is less than or equal to 5. The result is TRUE.

# --- 🟢 Greater than or equal to (>=)
10 >= 7  # This checks if 10 is greater than or equal to 7. The result is TRUE.

# ===============================================
# 🔷 Logical Operators
# ===============================================

# Logical operators are used to combine or modify logical values (TRUE/FALSE).

# --- 🟢 Logical NOT (!)
!TRUE  # The '!' operator negates a logical value. The result is FALSE.

# --- 🟢 Logical AND (&)
TRUE & FALSE  # The '&' operator checks if BOTH values are TRUE. The result is FALSE.

# --- 🟢 Logical OR (|)
TRUE | FALSE  # The '|' operator checks if at least ONE value is TRUE. The result is TRUE.

# ===============================================
# 🔷 Useful Logical Functions
# ===============================================

# --- 🟢 `isTRUE()`
# Checks if a condition is TRUE.
isTRUE(4 < 5)  # This checks if the condition (4 < 5) is TRUE. The result is TRUE.

# --- 🟢 Assigning comparison results to a variable
Result <- 4 < 5  # The comparison (4 < 5) is stored in the variable 'Result'.
Result  # Prints the value of 'Result', which is TRUE.

# ===============================================
# 🔴 Common Mistakes with Logical and Comparison Operators
# ===============================================

# 1. **Using a single equals sign (`=`) for equality:**
#    In R, `=` is used for assignment, not comparison.
#    Always use `==` to compare values.
#    Example: `4 == 5` (correct) vs. `4 = 5` (incorrect).

# 2. **Forgetting parentheses with `isTRUE()`**:
#    `isTRUE` requires a condition inside parentheses.
#    Example: `isTRUE(4 < 5)` (correct).

# ===============================================
# 🟢 Practice Problems
# ===============================================

# --- 📝 Problem 1: Basic Comparisons
# Predict the output of these comparisons:
# 1. 10 > 5
# 2. 8 == 10
# 3. 15 <= 20
# 4. 3 != 3
# 5. 5 >= 10

# Solution:
10 > 5      # TRUE
8 == 10     # FALSE
15 <= 20    # TRUE
3 != 3      # FALSE
5 >= 10     # FALSE

# --- 📝 Problem 2: Logical Operators
# Predict the output of these logical operations:
# 1. TRUE & FALSE
# 2. FALSE | TRUE
# 3. !FALSE
# 4. isTRUE(10 > 5)

# Solution:
TRUE & FALSE     # FALSE
FALSE | TRUE     # TRUE
!FALSE           # TRUE
isTRUE(10 > 5)   # TRUE

# --- 📝 Problem 3: Assign Results
# Assign the result of `7 < 3` to a variable called `check`.
# Use `!` to negate the result, and print it.

# Solution:
check <- 7 < 3        # FALSE
negated_check <- !check  # Negates FALSE, resulting in TRUE
print(negated_check)  # Prints TRUE

# ===============================================
# 🔵 Summary
# ===============================================

# 1️⃣ **Comparison Operators**:
#    - `<`  : Less than
#    - `>`  : Greater than
#    - `==` : Equal to
#    - `!=` : Not equal to
#    - `<=` : Less than or equal to
#    - `>=` : Greater than or equal to

# 2️⃣ **Logical Operators**:
#    - `!` : Logical NOT
#    - `&` : Logical AND
#    - `|` : Logical OR

# 3️⃣ **Key Functions**:
#    - `isTRUE(condition)`: Returns TRUE if the condition is TRUE.
#    - Assign results of comparisons to variables for reuse in your code.

# --- End of Lecture ---