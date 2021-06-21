#Data Project 3 Section 3.4 Question 52

#Calculating the probability mass function for question 1 of the probability questions
dbinom(20,25,0.7)

#Calculating the cumulative distribution function for question 2 part (a) of the probability questions

#This is one way we can solve the first part of this question
sum(dbinom(0:5,25,0.3))  

#This is another way we can solve the first part of this question
pbinom(5,25,0.3)

#Calculating part (b) of question 2

#This is one way to solve the question
pbinom(17,25,0.7) - pbinom(13,25,0.7)

#This is another way to solve the question
sum(dbinom(14:17,25,0.7))

