# Rasp, J. (n.d.). Journal Of Statistics Education Body Fat. Retrieved June 08, 2020, 
# from https://www2.stetson.edu/~jrasp/data.htm

library("car")
zscore = qnorm(0.975)

#Weight(in pounds) of 252 men in America and the corresponding data
weight = BodyFat$WEIGHT
xbar1 = mean(weight)
s1 = sd(weight)
n1 = length(weight)
confidence1 = c(xbar1-zscore*s1/sqrt(n1),xbar1+zscore*s1/sqrt(n1))
fivenum(weight)

#Height(in inches) of 252 men in America and the corresponding data
height = BodyFat$HEIGHT
xbar2 = mean(height)
s2 = sd(height)
n2 = length(height)
confidence2 = c(xbar2-zscore*s2/sqrt(n2),xbar2+zscore*s2/sqrt(n2))
fivenum(height)

#Plots using the library "car"
qqPlot(weight,ylab = "Weight", col = "green")
legend("bottomright", legend = "Weight", pch = 1, col = "green")
qqPlot(height, ylab = "Height", col = "orange")
legend("bottomright", legend = "Height", pch = 1, col = "orange")

#Quartile-Quartile Plot between two variables
qqplot(weight,height,xlab = "Weight", ylab = "Height", col = "purple")
legend("bottomright", legend = "Height vs Weight", pch = 1, col = "purple")

#BoxPlots
boxplot(weight, ylab = "Weight")
boxplot(height, ylab = "Height")

