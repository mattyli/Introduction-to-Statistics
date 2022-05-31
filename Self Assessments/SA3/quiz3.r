# Quiz 3 Question 2
setwd("C:/Users/02mat/OneDrive/Desktop/Intro-To-Stats/Introduction-to-Statistics/Self Assessments/SA3")
myData <- read.csv("CarbonDioxideGrassUptake.csv", colClasses=c("factor", "factor", "numeric", "numeric"))
print(str(myData))

x <- myData$CO2Concentration
y <- myData$CO2Uptake

boxplot(y~x, xlab="plant", ylab="CO2 uptake")

