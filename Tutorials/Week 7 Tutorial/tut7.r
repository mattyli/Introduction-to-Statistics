setwd("C:/Users/02mat/OneDrive/Desktop/side-projects/ML-quickstart/Introduction-to-Statistics/Tutorials/Week 7 Tutorial") #nolint

winningTimes = read.csv("Winning_Times_Marathon.csv", colClasses=c("factor", "numeric", "factor"))
win1968 = subset(winningTimes, Year == "1968")
print(win1968)
wt2019 = read.csv('marathon_times.csv', colClasses=c('factor', 'factor', 'character', 'factor', 'factor', 'numeric', 'numeric'))
menU30 = subset(wt2019, Age < 30 & Gender=="M")
womenU30 = subset(wt2019, Age < 30 & Gender=="F")

hist(menU30$OfficialTime.Minutes, xlab="time (mins)", ylab="frequency (#)", main="frequency of runners (M)")
abline(v=142.3, col="blue", lwd=4)

hist(womenU30$OfficialTime.Minutes, xlab="time (mins)", ylab="frequency (#)", main="frequency of runners (F)")
abline(v=210.0, col="red", lwd=4)
men1968 = 142.3
women1968 = 210.0
winnerMen = subset(menU30, OfficialTime.Minutes < men1968)
winnerWomen = subset(womenU30, OfficialTime.Minutes < women1968)

percentMen = nrow(winnerMen)/ nrow(menU30)
print(percentMen*100)

percentWomen = nrow(winnerWomen)/ nrow(womenU30)
print(percentWomen*100)
# men
sdMen = sd(menU30$OfficialTime.Minutes)
meanMen = mean(menU30$OfficialTime.Minutes)

sdWomen = sd(womenU30$OfficialTime.Minutes)
meanWomen = mean(womenU30$OfficialTime.Minutes)
print(cat("Standard Deviation (MEN)", sdMen, "Mean (MEN)", meanMen))
print(cat("Standard Deviation (WOMEN)", sdWomen, "Mean (WOMEN)", meanWomen))
print(pnorm(men1968, meanMen, sdMen))
print(pnorm(women1968, meanWomen, sdWomen))
# fastest 10%

print(qnorm(0.1, meanMen, sdMen))
print(qnorm(0.1, meanWomen, sdWomen))