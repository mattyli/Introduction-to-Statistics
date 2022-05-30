# week 3 tutorial by ML
setwd("C:/Users/02mat/OneDrive/Desktop/Intro-To-Stats/Introduction-to-Statistics/Tutorials/Week 3 Tutorial") #nolint
chickData <- read.csv("chickweight_data.csv", colClasses=c("factor", "factor", "numeric", "numeric"))      # path to/ data file name

# partitioning chick data in subsets based on diet
controlSub <- subset(chickData, Diet == "1")
d2Sub <- subset(chickData, Diet == "2")
d3Sub <- subset(chickData, Diet == "3")
d4Sub <- subset(chickData, Diet == "4")

# determining the mean weight of the chicks based on each diet
# not calculating the average weight of each individual chick

# determining averages (mean)
controlWeightMean <- mean(controlSub$Weight)
d2WeightMean <- mean(d2Sub$Weight)
d3WeightMean <- mean(d3Sub$Weight)
d4WeightMean <- mean(d4Sub$Weight)

# printing the average weights
print(controlWeightMean)
print(d2WeightMean)
print(d3WeightMean)
print(d4WeightMean)


# the scatterplot for diet 3, put into variables for cleanliness
xAxis <- d3Sub$Time         # another dataframe containing all x values for scatter
yAxis <- d3Sub$Weight

plt = plot(xAxis, yAxis, pch=19, xlab = "Time (days)", ylab = "Weight (grams)", main = "Weight (grams) over Time (days) for chicks fed on diet 3")

# difference switching from diet A to diet B (function so we don't need to write the code again)
# avgA/B correspond to the average chick weight of the corresponding diet
calcPercentDifference <- function(avgA, avgB){
    percentDiff <- 100 * (avgB - avgA) / avgA
    return(percentDiff)
}

# variables to hold the percent difference in weight
oneToTwo <- calcPercentDifference(controlWeightMean, d2WeightMean)
twoToThree <- calcPercentDifference(d2WeightMean, d3WeightMean)
threeToFour <- calcPercentDifference(d3WeightMean, d4WeightMean)

# outputting the variables
print(oneToTwo)
print(twoToThree)
print(threeToFour)
