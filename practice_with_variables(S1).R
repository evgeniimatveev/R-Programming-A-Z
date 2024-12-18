# Assign an integer value to variable A
A <- 10  # Variable A is assigned the value 10 (default type: double in R).
typeof(A)  # This function returns the type of A. Even though it looks like an integer, 
# in R, numeric values default to "double".

# Assign another integer value to variable B
B <- 5  # Variable B is assigned the value 5 (also a "double").
typeof(B)  # Returns "double".

# Add variables A and B, storing the result in variable C
C <- A + B  # The result of A + B (10 + 5) is assigned to C.
typeof(C)  # Since A and B are "double", the result is also a "double".
C  # Prints the value of C, which is 15.
A  # Prints the value of A (10).
B  # Prints the value of B (5).

# Variable one
var1 <- 2.5  # Assign a floating-point number to variable var1. Type: "double".
# Variable two
var2 <- 4  # Assign an integer-like value (but type: "double" by default) to var2.

# Perform division between var1 and var2
result <- var1 / var2  # Divide var1 (2.5) by var2 (4) and store the result in 'result'.
result  # Prints the result of the division (0.625).

# Create two string (character) variables
greeting <- "Hello"  # A character variable holding the text "Hello".
name <- "Tony"  # Another character variable holding the name "Tony".

# Combine (concatenate) the strings into a message
message <- paste(greeting, name)  
# The paste() function combines the values of 'greeting' and 'name' with a space in between.
# Result: "Hello Tony".

message  # Prints the concatenated message: "Hello Tony".