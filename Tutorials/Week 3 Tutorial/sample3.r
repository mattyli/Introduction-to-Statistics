# include own working directory
# CODE WILL NOT RUN
mydata <- read.csv("chickweight_data.csv", colClasses=c("factor", "factor", "numeric", "numeric"))  
# partitioning chick data in subsets based on diet
control_subset <- subset(mydata, Diet == "1")
diet2_subset <- subset(mydata, Diet == "2")
diet3_subset <- subset(mydata, Diet == "3")
diet4_subset <- subset(mydata, Diet == "4")

# determining the mean weight of the chicks based on each diet
# not calculating the average weight of each individual chick

# determining averages (mean)
control_MEAN <- mean(controlSub$Weight)
diet2_MEAN <- mean(diet2_subset$Weight)
diet3_MEAN <- mean(diet3_subset$Weight)
diet4_MEAN <- mean(diet4_subset$Weight)

# printing the average weights
print(control_MEAN)
print(diet2_MEAN)
print(diet3_MEAN)
print(diet4_MEAN)

# the scatterplot for diet 3, put into variables for cleanliness
xAxis <- diet3_subset$Time         # another dataframe containing all x values for scatter
yAxis <- diet3_subset$Weight

plt = plot(xAxis, yAxis, pch=19, xlab = "Time (days)", ylab = "Weight (grams)", main = "Weight (grams) over Time (days) for chicks fed on diet 3")

# difference switching from diet A to diet B (function so we don't need to write the code again)
# avgA/B correspond to the average chick weight of the corresponding diet
calcPercentDifference <- function(avgA, avgB){
    percentDiff <- 100 * (avgB - avgA) / avgA
    return(percentDiff)
}

# variables to hold the percent difference in weight
firstSwitch <- 100 * (diet2_MEAN - diet3_MEAN) / diet3_MEAN # based off the formula on OnQ
# outputting the variables
print(firstSwitch)
print(secondSwitch)
print(thirdSwitch)
