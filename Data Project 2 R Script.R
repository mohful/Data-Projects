#Section 14.3 Question 31
male = c(25,24,28,19)
female = c(10,32,17,34)
# Data Distribution On A Side-By-Side Bar Chart
table =  rbind(male,female)
barplot(table, ylab = "Number of students" , xlab = "Age" , main = "Smokers of different ages", 
        col = c("red", "green") , names.arg = c("< 16", "16 - 17", "18 - 20", "> 20"), beside=TRUE)
legend ("topleft", legend = c("male","female"), fill = c("red" , "green"))
#Combination
choose(25,5)
