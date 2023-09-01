# Operators

# Arithmetic Operators
a <- c(2, 3.3, 4)
b <- c(2, 5, 3)
print(a+b)
print(a-b)
print(a*b)
print(a/b)
print(a%%b)
print(a%/%b)
print(a^b)

# Relational Operators
a <- c(1, 5, 5)
b <- c(2, 4, 6)
print(a>b)
print(a<b)
print(a<=b)
print(a>=b)
print(a==b)
print(a!=b)

# Logical Operators
a <- c(3, 0, TRUE, 2+2i)
b <- c(2, 4, TRUE, 2+3i)
print(a&b)
print(a|b)
print(!a)

# Assignment Operators
a1 <- 8
a2 <- 12
t <- 1:10

#Miscellaneous Operators
print(a1%in%t)
print(a2%in%t)

# Data Structures:

# Vectors
fruits <- c("banana", "apple", "orange")
fruits
length(fruits)
fruits[1]
fruits[c(1, 3)]
fruits[c(-1)]
fruits[1] <- "pear"
numbers1 <- 1.5:6.5
numbers1
sort(fruits)  
sort(numbers1)
repeat_each <- rep(c(1,2,3), each = 3)
repeat_each
repeat_times <- rep(c(1,2,3), times = 3)
repeat_times
repeat_indepent <- rep(c(1,2,3), times = c(5,2,1))
repeat_indepent
numbers <- seq(from = 0, to = 100, by = 20)
numbers

# Lists
thislist <- list("apple", "banana", "cherry")
thislist
append(thislist, "orange")
append(thislist, "orange", after = 2)
(thislist)[2:5]

# Arrays
thisarray <- c(1:24)
thisarray
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray
multiarray[2, 3, 2]
length(multiarray)

# Matrices
thismatrix <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)
thismatrix
thismatrix[1, 2]
thismatrix[2,]
thismatrix[,2]

# Factors
music_genre <- factor(c(" Jazz" , " Rock" , " Classic" , " Classic" , " Pop" , " Jazz" , " Rock" , " Jazz" ))
music_genre
levels(music_genre)
length(music_genre)
music_genre[3]
# Data Frames
Data_Frame <- data.frame (
  Training = c(" Strength" , " Stamina" , " Other" ),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)
length(Data_Frame)
Data_Frame1 <- data.frame (
  Training = c(" Strength" , " Stamina" , " Other" ),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)
Data_Frame2 <- data.frame (
  Training = c(" Stamina" , " Stamina" , " Strength" ),
  Pulse = c(140, 150, 160),
  Duration = c(30, 30, 20)
)
New_Data_Frame <- rbind(Data_Frame1, Data_Frame2)
New_Data_Frame
Data_Frame3 <- data.frame (
  Training = c(" Strength" , " Stamina" , " Other" ),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)
Data_Frame4 <- data.frame (
  Steps = c(3000, 6000, 2000),
  Calories = c(300, 400, 300)
)
New_Data_Frame1 <- cbind(Data_Frame3, Data_Frame4)
New_Data_Frame1

# Statements: 

# If Statement
a <- 33
b <- 200
if (b > a) {
  print(" b is greater than a" )
}
# If-else Statement
a <- 33
b <- 33
if (b > a) {
  print(" b is greater than a" )
} else if (a == b) {
  print (" a and b are equal" )
}
a <- 200
b <- 33
c <- 500
if (a > b & c > a) {
  print(" Both conditions are true" )
}

# Switch Statement
ax= 1
bx = 2
y = switch(
  ax+bx,
  " Hello, Shubham" ,
  " Hello Arpita" ,
  " Hello Vaishali" ,
  " Hello Nishka" 
)
print (y)
y = " 18" 
x = switch(
  y,
  " 9" =" Hello Arpita" ,
  " 12" =" Hello Vaishali" ,
  " 18" =" Hello Nishka" ,
  " 21" =" Hello Shubham" 
)
print (x)
x= " 2" 
y=" 1" 
a = switch(
  paste(x,y,sep=" " ),
  " 9" =" Hello Arpita" ,
  " 12" =" Hello Vaishali" ,
  " 18" =" Hello Nishka" ,
  " 21" =" Hello Shubham" 
)
print (a)
y = " 18" 
a=10
b=2
x = switch(
  y,
  " 9" =cat(" Addition=" ,a+b),
  " 12" =cat(" Subtraction =" ,a-b),
  " 18" =cat(" Division= " ,a/b),
  " 21" =cat(" multiplication =" ,a*b)
)
print (x)