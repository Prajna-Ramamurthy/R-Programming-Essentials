# Pie Chart
x <- c(10,20,30,40)
mylabel <- c("Apples", "Bananas", "Cherries", "Dates")
colors <- c("blue", "yellow", "green", "black","pink","gold")
pie(x,labels=mylabel, main="Fruits" ,init.angle = 0, col=colors)
legend("bottomright", mylabel, fill = colors)

# Pie3D
install.packages("plotrix")
library(plotrix)
employee <- read.csv("/home/prajna/Desktop/r/dataset1.csv", header=TRUE, sep = ",")
data <- c(19, 21, 54, 12, 36, 12)
png(file = "/home/prajna/Desktop/r/img1.png")
pie3D(employee$Age,
      radius = 0.75,
      height = 0.1,
      theta = 1.5,
      col= colors,
      border = "white",
      labels = employee$Name,
      explode = 0.2)
legend("bottomright", employee$Name, fill = colors)
dev.off()

# Bar Graph
x <- c("A", "B", "C", "D")
# y-axis values
y <- c(2, 4, 6, 8)
barplot(y, names.arg = x,xlab="Month",ylab="Revenue", main="Revenue Bar chart", col =
          "red",density = 10,width = y,horiz = TRUE)
library(RColorBrewer)
regions<-c("Maths","Chem","Phy")
cost <- read.csv("cost.csv", header=TRUE, sep = ",")
barplot(cost$Marks, names.arg = cost$Name,
        col =c("cadetblue3","deeppink2","goldenrod1"))
legend("topleft", regions, cex = 0.3, fill = c("cadetblue3","deeppink2","goldenrod1"))

Values <- matrix(c(21,32,33,14,95,46,67,78,39,11,22,23,94,15,16), nrow = 3, ncol = 5, byrow =
                      TRUE)
barplot(Values, col =c("cadetblue3","deeppink2","goldenrod1"))

# Histogram
v <- c(19, 23, 11, 5, 16, 21, 32, 14, 19, 27, 39,33,34,35,33,34,35,33,34,35)
# Create the histogram.
hist(v, xlab = "No.of Articles ",
     col = "green", border = "black")

# Line Graph
v <- c(13,22,28,7,31)
w <- c(11,13,32,6,35)
x <- c(12,22,15,34,35)
plot(v, type="l",lty=3, lwd=5,xlab="Month",ylab="Temperature", xlim=c(2,6), ylim=c(0,40))
lines(w, type="o", col="red")
lines(x, type = "o", col = "blue")

cost <- read.csv("cost.csv", header=TRUE, sep = ",")
plot(cost$Marks, type="o",lty=1, lwd=2,xlab="Students",ylab="Marks")

# While Loop
i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
  
}

# Functions
my_function <- function() { # create a function with the name my_function
  print("Hello World!")
}
my_function()

my_function <- function(fname) {
    paste(fname, "Griffin")
  }
my_function("Peter")
my_function("Lois")
my_function("Stewie")

my_function <- function(fname, lname) {
    paste(fname, lname)
  }
my_function("Peter", "Griffin")

Outer_func <- function(x) {
    Inner_func <- function(y) {
      a <- x + y
      return(a)
    }
    return (Inner_func)
  }
output <- Outer_func(3) # To call the Outer_func
output(5)

tri_recursion <- function(k) {
    if (k > 0) {
      result <- k + tri_recursion(k - 1)
      print(result)
    } else {
      result = 0
      return(result)
    }
  }
tri_recursion(6)
