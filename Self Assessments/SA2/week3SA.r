# setting the working directory
setwd("C:/Users/02mat/OneDrive/Desktop/Intro-To-Stats/Introduction-to-Statistics/Self Assessments/SA2") #nolint
data <- read.csv("runningData.csv")     # storing data

meanRS <- mean(data$Running.Speed..miles.min.)
meanAge <- mean(data$Age..Years.)
meanFreq <- mean(data$Running.Frequency..days.week.)

# q3 - running speed as a function of age
plt1 = plot(data$Age..Years., data$Running.Speed..miles.min., pch=19, xlab="Age (Years)", ylab="Running Speed (Miles/Min", main="Running speed as a function of age")
#q4 - running frequency as a function of age
plt2 = plot(data$Age..Years., data$Running.Frequency..days.week., pch=19, xlab="Age (Years)", ylab="Running Frequency (days/week)", main="Running frequncy as a function of age")
