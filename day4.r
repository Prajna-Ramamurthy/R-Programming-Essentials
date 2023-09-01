# Scatterplots
x <- c(141, 134, 178, 156, 108, 116, 119, 143, 162, 130)
y <- c(62, 85, 56, 21, 47, 17, 76, 92, 62, 58)
data <-mtcars[,c('wt','mpg')]
plot(x = x, y = y, xlab = "Weight", ylab = "Milage", xlim = c(1,200), ylim = c(1,200), main =
         "Weight v/sMilage")

pairs(~wt+mpg+disp+cyl,data = mtcars, main = "Scatterplot Matrix")

library(ggplot2)
# Plotting the chart using ggplot() and geom_point() functions.
ggplot(mtcars, aes(x = drat, y = mpg)) +geom_point()
# Saving the file.
dev.off()

library(ggplot2)
library(dplyr)

ggplot(data = mtcars) + labs(title = "MTCars Data Plot")

ggplot(data = mtcars, aes(x = hp, y = mpg, col = disp))+
  labs(title = "MTCars Data Plot")

ggplot(data = mtcars, aes(x = hp, y = mpg, col = disp)) +
  geom_point() +
  labs(title = "Miles per Gallon vs Horsepower",
       x = "Horsepower",
       y = "Miles per Gallon")

# Dataset
Mtcars
?mtcars # Information

Data_Cars <- mtcars # create a variable of the mtcars data set for better organization
# Use dim() to find the dimension of the data set
dim(Data_Cars)
# Use names() to find the names of the variables from the data set
names(Data_Cars)
rownames(Data_Cars)

Data_Cars <- mtcars
Data_Cars$cyl
summary(Data_Cars)

Data_Cars <- mtcars
rownames(Data_Cars)[which.max(Data_Cars$hp)]
rownames(Data_Cars)[which.min(Data_Cars$hp)]

mean(Data_Cars$wt)
median(Data_Cars$wt)
Data_Cars <- mtcars
names(sort(-table(Data_Cars$wt)))[1]

# CSV Files
csv_data<- read.csv("record.csv")
print(is.data.frame(csv_data))
print(ncol(csv_data))
print(nrow(csv_data))

max_sal<- max(csv_data$salary)
print(max_sal)

details <- subset(csv_data,salary==max(salary))
print(details)

details <- subset(csv_data,dept=="IT")
print(details)

details <- subset(csv_data,dept=="IT"&salary>600)
print(details)

details <- subset(csv_data,as.Date(start_date)>as.Date("2014-01-01"))
print(details)

details <- subset(csv_data,as.Date(start_date)>as.Date("2014-01-01"))
# Writing filtered data into a new file.
write.csv(details,"output.csv")
new_details<- read.csv("output.csv")
print(new_details)

# Binary
write.table(mtcars, file = "mtcars1.csv",row.names = FALSE, na = "",
            col.names = TRUE, sep = ",")

new.mtcars <- read.table("marks.csv",sep = ",",header = TRUE,nrows = 5)
new.mtcars

bfile = file("binary12.bin", "wb")

writeBin(colnames(new.mtcars), bfile)

writeBin(c(new.mtcars$m1,new.mtcars$m2,new.mtcars$m3), bfile)

close(bfile)
read.filename <- file("binary12.bin", "rb")

# Reading the column names. n = 3 as we have 3 columns.
column.names <- readBin(read.filename, character(), n = 3)

# Reading the column values. n = 18 as we have 3 column names and 15 values.
read.filename <- file("binary12.bin", "rb")
bin_data <- readBin(read.filename, character(), n = 30)

# Printing the data.
print(bin_data)