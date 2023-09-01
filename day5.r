#Boxplot

my_colors <- c("lightyellow", "lightgreen", "lightblue", "lightpink","lightgreen", "lightblue")

boxplot(mtcars$mpg,mtcars$carb)


boxplot(mtcars$mpg~mtcars$carb)

boxplot(mtcars$mpg ~ mtcars$carb,
        xlab = "carb",  
        ylab = "mpg", 
        main = "R Boxplot Example",
        col = my_colors0
        )

legend("topright", legend = unique(mtcars$carb),
       fill = my_colors, border = "black", title = "Carb")


#Boxplot using notch
boxplot(mpg , carb, 
        data = mtcars, 
        xlab = "carb",  
        ylab = "mpg", 
        main = "R Boxplot Example",
        col = my_colors,
        notch = TRUE
)
legend("topright", legend = unique(mtcars$carb),
       fill = my_colors, border = "black", title = "Carb") 
        


#Violin Plots

library(vioplot) 
x1 <- mtcars$mpg[mtcars$cyl==4]  
x2 <- mtcars$mpg[mtcars$cyl==6]  
x3 <- mtcars$mpg[mtcars$cyl==8]  
vioplot(x1, x2, x3, 
        names=c("4 cyl", "6 cyl", "8 cyl"))  
title("Violin plot example")  

library(ggplot2)
ggplot(data=mtcars, aes(x=hp, y=mpg)) + labs(title="a")

#Bagplot- 2-Dimensional Boxplot

library(aplpack)  #Another PLot Package
attach(mtcars)  
bagplot(disp,hp, 
        xlab="Car Weight", 
        ylab="Miles Per Gallon",   
        main="2D Boxplot Extension")  