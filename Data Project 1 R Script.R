# Supplementary exercise 63 - Decibels
decibels = c(55.3,55.3,55.3,55.9,55.9,55.9,55.9,56.1,56.1,56.1,56.1,56.1,56.1,56.8,56.8,57,57,57,57.8,57.8,57.8,57.9,57.9,57.9,58.8,58.8,58.8,59.8,59.8,59.8,62.2,62.2,63.8,63.8,63.8,63.9,63.9,63.9,64.7,64.7,64.7,65.1,65.1,65.1,65.3,65.3,65.3,65.3,67.4,67.4,67.4,67.4,68.7,68.7,68.7,68.7,69,70.4,70.4,71.2,71.2,71.2,73,73,73.1,73.1,74.6,74.6,74.6,74.6,79.3,79.3,79.3,79.3,83,83,83)
# Descriptive Statistics Data
mean(decibels)
median(decibels)
mean(decibels,0.091)
var(decibels)
sd(decibels)
fivenum(decibels)
IQR(decibels)
# Plots
hist(decibels,main = "Acceptable Noise Levels For Construction Site Offices", xlab = "dBA", ylab = "Number of individuals", freq=T)
boxplot(decibels,main = "Acceptable Noise Levels For Construction Site Offices", ylab = "dBA")
