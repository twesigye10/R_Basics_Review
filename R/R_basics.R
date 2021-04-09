# writing first R script
my_first_string <- "Hello, World!"
print(my_first_string)

# data structures
# vectors

fruits <- c("banana", "apple", "mango")
print(fruits)

some_numbers <- c(1:10)
print(some_numbers)

# check data type using class() function
class(fruits)
class(some_numbers)

# lists
my_list <- list(c(2,5,3),21.3,sin)
my_list

# Matrices

my_matrix  <-  matrix( some_numbers, nrow = 5, ncol = 10, byrow = TRUE)
my_matrix

# Arrays
my_array <- array(fruits, dim = c(3,3,4))
my_array

# Factors

my_colours <- c("Red", "Green", "Red", "Blue", "Blue","Green", "Red", "Blue" )
# check to see if it is a factor
is.factor(my_colours)

my_colours_factor <- factor(my_colours)
my_colours_factor
# check to see if it is a factor
is.factor(my_colours_factor)

# Data Frames
# Data frames are simply tabular data objects. 
my_data_frame <- data.frame(
  gender = c("Male", "Male","Female"), 
  height = c(152, 171.5, 165), 
  weight = c(81,93, 78),
  Age = c(42,38,26)
)

my_data_frame

class(my_data_frame)

