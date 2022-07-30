#setwd("")
data = read.csv("Cholesterol_data.csv", colClasses=c('factor', 'numeric'))
boxplot(data$Cholesterol, xlab="patients that were selected", ylab="cholesterol concentration (mmol/L)", main="visualisation of community cholesterol levels")
abline(h=5.2, col="red",lwd=3)        # the national mean cholesterol level

t.test(data$Cholesterol, mu=5.2, alternative="greater") # alternative greater than average
qt(0.95, 57) # since we're only interested in the top tail