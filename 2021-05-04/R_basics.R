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

# some useful functions
# paste()
my_name <- "Anthony"
my_name_string <- paste("My name is: ", my_name)
print(my_name_string)

# runif
my_random_numbers <- runif(20, 100,230)
print(my_random_numbers)

?runif

# rep
my_repeat <- rep(fruits, each= 5)
print(my_repeat)

## Arithmetic Operators
# + :Addition
# -:Subtraction
# * :Multiplication
# / :Division
# ^ :Exponent
# %% :Modulus (Remainder from division)
# %/% :Integer Division

## Relational Operators
# < :Less than
# > :Greater than
# <= :Less than or equal to
# >= :Greater than or equal to
# == :Equal to
# != :Not equal to

## Logical Operators

# !: Logical NOT
# & :Element-wise logical AND
# && :Logical AND
# | :Element-wise logical OR
# || :Logical OR

## Assignment Operators
# <-, <<-, = :Leftwards assignment
# ->, ->> :Rightwards assignment

if(my_name %in% c("amos", "mathias", "anthony") ){
  print(paste("My name is: ", my_name))
}else{
  print(paste("My name: ", input_1, "is not in the vector"))
}


## creating functions
# function_name <- function(argument_1, argument_2, ...) {
# Function body
# }

# # Checking an element in a vector

my_function <- function(input_1, input_2){
  if(input_1 %in% input_2 ){
    final_output <- paste("My name is: ", input_1)
  }else{
    final_output <- paste("My name: ", input_1, "is not in the vector")
  }
  
  return(final_output )
}

my_out_text <-  my_function("amos", c("amos", "mathias", "anthony"))
print(my_out_text)


# Adding two numbers using a function
my_addition_function <- function(input_1, input_2){
  my_add_number <- input_1 + input_2
  return(my_add_number)
}

my_add_two_numbers <- my_addition_function(250,165)
print(my_add_two_numbers)
