# Variables

# Concatenate Elements
text <-"awesome"
paste("R is", text)

text1 <-"R is"
text2 <-"awesome"
paste(text1,text2)

num1 <-5
num2 <-10
num1 + num2

# Multiple Variables

# Assign the same value to multiple variables in one line
var1 <- var2 <- var3 <- "Orange"

# Print variable values
var1
var2
var3

# Variable Names

# Legal variable names:
myvar <- "John"
my_var <- "John"
myVar <- "John"
MYVAR <- "John"
myvar2 <- "John"
.myvar <- "John"

# Illegal variable names:
2myvar <- "John"
my-var <- "John"
my var <- "John"
_my_var <- "John"
my_v@r <- "John"
TRUE <- "John"

# Data types
# numeric - (10 5, 55, 787)
# integer - (1L, 55L, 100L, where the letter "L" declares this as an integer)
# complex - (9 + 3i, where "i" is the imaginary part)
# character (a k a  string) - ("k", "R is exciting", "FALSE", "11 5")
# logical (a k a  boolean) - (TRUE or FALSE)

# Raw Data Type
# A raw data type specifies values as raw bytes  You can use the following methods to
# convert character data types to a raw data type and vice-versa:
# charToRaw() - converts character data to raw data
# rawToChar() - converts raw data to character data
# For example,
# convert character to raw
raw_variable <- charToRaw("Welcome to Programiz")
print(raw_variable)
print(class(raw_variable))
# convert raw to character
char_variable <- rawToChar(raw_variable)
print(char_variable)
print(class(char_variable))

# numeric
x <- 10.5
class(x)
# integer
x <- 1000L
class(x)
# complex
x <- 9i + 3
class(x)
# character/string
x <- "R is exciting"
class(x)
# logical/boolean
x <- TRUE
class(x)

# Built-in Math Functions
max(5, 10, 15)
min(5, 10, 15)
sqrt(16)
abs(-47)
ceiling(14.5)
floor(14.5)

# R Print Output
# R print() Function
#  In R, we use the print() function to print values and variables  For example,

# print values
print("R is fun")

# print variables
x <- "Welcome to Programiz"
print(x)

# paste() Function in R
# You can also print a string and variable together using the print() function. For this, you have
# to use the paste() function inside print(). For example,

company <- "Programiz"

# print string and variable together
print(paste("Welcome to", company))

# If you don't want any default separator between the string and variable, you can use another
#   variant of paste() called paste0(). For example,
company <- "Programiz"

# using paste0() instead of paste()
print(paste0("Welcome to", company))

# R sprintf() Function
# The sprintf() function of C Programming can also be used in R. It is used to print formatted
# strings. For example,

myString <- "Welcome to Programiz"

# print formatted string
sprintf("String: %s", myString)

# R cat() Function
# R programming also provides the cat() function to print variables. However, unlike print(),
# the cat() function is only used with basic types like logical, integer, character, etc.
# 
# print using Cat
cat("R Tutorials\n")

# print a variable using Cat
message <- "Programiz"
cat("Welcome to ", message)

# Take Input From User:
name <- readline(prompt="Enter your name: ")
name = readline("Enter your name: ")

# Multiple inputs from user using R:
{
  var1 = readline("Enter 1st number : ");
  var2 = readline("Enter 2nd number : ");
  var3 = readline("Enter 3rd number : ");
  var4 = readline("Enter 4th number : ");
}

{
  name = readline("Enter name : ");
  age = readline("Enter age : ");
}

# Reading Data Files with read.table():
w<-read.table("home/prajna/Desktop/r/dataset1.csv", header = FALSE, sep=",")
head(w)
tail(w)
View(w)
  
# Writing Data Files with write.table()
write.table(w,"home/prajna/Desktop/r/dataset1.csv")

# readLines() and writeLines() function in R:
a<-readLines(con <- file("home/prajna/Desktop/r/data1.txt"))
close(con)

a <- readLines(con <- file("home/prajna/Desktop/r/data1.txt"))
close(con)

sample<-c("Class,Alcohol,Malic acid,Ash","1,14.23,1.71,2.43","1,13.2,1.78,2.14")
writeLines(sample,"home/prajna/Desktop/r/result2.txt")

# dput() and dget() Function in R:
x <- data.frame(Name = "Mr. A", Gender = "Male", Age=35)
dput(x)
dput(x, file = "home/prajna/Desktop/r/dput.r")

y <- dget("home/prajna/Desktop/r/dput.r")
y

# dump() Function in R
x<-1:10
d <- data.frame(Name = "Mr. A", Gender = "Male", Age=35)
dump(c("x", "d"), file = "home/prajna/Desktop/r/dump_data.r")

# source() Function in R
source("home/prajna/Desktop/r/dump_data.r")
x
d
str(d)
