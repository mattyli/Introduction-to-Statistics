setwd("C:/Users/02mat/OneDrive/Desktop/Intro-To-Stats/Introduction-to-Statistics/Self Assessments/SA2") #nolint
#d = read.csv("quiz1data1.csv", colClasses = c("factor", "factor", "numeric"))
#print(mean(d$HoursSleep)) # average hours slept by all

# latteSubset = subset(d, Type == "latte")
# print(mean(latteSubset$HoursSleep))

d = read.csv("q1ds2.csv", colClasses = c("numeric", "factor"))
print(IQR(d$Happiness))