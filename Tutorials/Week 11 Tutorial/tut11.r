# Week 11 Tutorial - Linear Regression and Correlation
data = read.csv("mediasexism.csv", colClasses=c('factor', 'factor','numeric','numeric', 'numeric'))
plot(data$Expert, data$Seats, xlab="number of articles depicting candidates as 'experts'", ylab="number of seats held", main="number of seats held vs number of stories depicting candidates as experts")

seats = data$Seats # Y or the response
articles = data$Expert # X or the predictor

model = lm(seats~articles)
model
plot(data$Expert, data$Seats, xlab="number of articles depicting candidates as 'experts'", ylab="number of seats held", main="number of seats held vs number of stories depicting candidates as experts")
abline(model, col="red", lwd=3)
summary(model)
# Residual plot
plot(model, 1)
hist(residuals(model),main="",xlab="Residuals",freq=FALSE)
res=residuals(model)
curve(dnorm(x,0,sd(res)), add=TRUE,col="blue") 
shapiro.test(residuals(model))