library("car")

#Rasp, J. (n.d.). Statistical Abstract of the United States Death Rates.
#Retrieved June 14, 2020, from https://www2.stetson.edu/~jrasp/data.htm

#Data Declaration
stroke = DeathData$STROKE
respiratory = DeathData$RESPIR
m = length(stroke)
n = length(respiratory)

#Data Calculation 
xbar = mean(stroke)
ybar = mean(respiratory)
sigmax = sd(stroke)
sigmay = sd(respiratory)
fivenum(stroke)
fivenum(respiratory)

# Hypothesis Calculations
zstat = (xbar-ybar-2)/sqrt(sigmax^2/m + sigmay^2/n)
pvalue = 1 - pnorm(zstat)

#Plots
boxplot(stroke, respiratory, names = c("Strokes", "Respiratory Problems"), col = "orange", border = "brown")

# Proof of Standard Normal Distribution Plots
qqPlot(stroke,ylab = "Death rate from Strokes", col = "green")
legend("bottomright", legend = "Death rate from Strokes", pch = 1, col = "green")
qqPlot(respiratory, ylab = "Death Rate from Respiratory Problems", col = "orange")
legend("bottomright", legend = "Death Rate from Respiratory Problems", pch = 1, col = "orange")

