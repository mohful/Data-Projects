# Chapter 10 Supplementary Exercise Question 42
# Data Declaration
brown = c(26.8, 27.9, 23.7, 25.0, 26.3, 24.8, 25.7, 24.5)
green = c(26.4, 24.8, 28.0, 26.9, 29.1)
blue = c(25.7, 27.2, 29.9, 28.5, 29.4, 28.3)

# Assumption Checking
sds = c(sd(brown),sd(green),sd(blue))
max(sds)/min(sds)
width_check = c(brown-mean(brown),green-mean(green),blue-mean(blue))
qqnorm(width_check)
qqline(width_check)

# ANOVA
width = c(brown, green, blue)
colour = c(rep("brown", 8), rep("green",5), rep("blue", 6))
data = data.frame(width, colour)
results = aov(width~colour,data=data)
summary(results)
pairwise.t.test(width,colour,p.adjust.method = "bonferroni",pool.sd=F)

# Plots
boxplot(brown,green,blue,names=c("Brown","Green","Blue"),main="Critical Flicker Frequency Values")

# Using five number summary to confirm that the median of the green iris colour group
# is between the median of brown and blue iris colour groups
fivenum(brown)
fivenum(green)
fivenum(blue)
