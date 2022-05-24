# week 3 tutorial by ML
setwd("C:/Users/02mat/OneDrive/Desktop/Intro-To-Stats/Introduction-to-Statistics/Tutorials/Week 3 Tutorial") #nolint
chickData <- read.csv("sample_data.csv", colClasses=c("character", "character", "numeric", "numeric"))      # path to/ data file name

# partitioning chick data in subsets based on diet
controlSub <- subset(chickData, Diet=="1")
d2Sub <- subset(chickData, Diet=="2")
d3Sub <- subset(chickData, Diet=="3")
d4Sub <- subset(chickData, Diet=="4")

# determining the mean weight of the chicks based on each diet
# not calculating the average weight of each individual chick

# determining averages (mean)
controlWeightMean <- mean(controlSub$Weight)
d2WeightMean <- mean(d2Sub$Weight)
d3WeightMean <- mean(d3Sub$Weight)
d4WeightMean <- mean(d4Sub$Weight)

# the scatterplot for diet 3
# y axis should be average weight over set time
# x axis should be time

xAxis <- d3Sub$Time         # another dataframe containing all x values for scatter
yAxis <- d3Sub$Weight

plt = plot(xAxis, yAxis, pch=19, xlab = "Time (days)", ylab = "Weight (grams)", main = "Weight (grams) over Time (days) for chicks fed on diet 3",
    col = c("red", "blue", "green", "black", "purple")
)

# chick 1, 2, 3, 4, 5, = red, blue, green, black, purple

#x4 <- filter(d3Sub$Time, Chick == "4")
#y4 <- filter(d3Sub$Weight, Chick == "4")

x4 <- d3Sub$Time[d3Sub$Chick == "4"]
y4 <- d3Sub$Weight[d3Sub$Chick == "4"]
pltC4 = plot(x4, y4, pch = 19, xlab = "Time (Days)", ylab = "Weight of Chick 4 (grams)", main = "Test Plot")