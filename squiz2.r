#setwd("C:/Users/02mat/OneDrive/Desktop/Intro-To-Stats/Introduction-to-Statistics") #nolint
data = read.csv("Quiz2_DataSet1_2.csv", colClasses=c("factor", "numeric", "factor"))
gen2020 = subset(data, Generation == "Gen2020")
table(gen2020$Career)

noCyn2020 = subset(gen2020, Cynicism == 0)

proportion = nrow(noCyn2020)/ nrow(gen2020)
newData = read.csv("Quiz1_DataSet2_6.csv", colClasses=c("numeric", "factor"))