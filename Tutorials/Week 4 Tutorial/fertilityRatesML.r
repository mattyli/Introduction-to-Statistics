setwd('C:/Users/02mat/OneDrive/Desktop/Intro-To-Stats/Introduction-to-Statistics/Tutorials/Week 4 Tutorial') #nolint
df = read.csv('fertility_data.csv', colClasses=c('factor', 
    'factor', 'factor', 'numeric'))

# 1990-2005 time period (a)
q1a <- subset(df, Period=='1990-2005' & Quintile=='Q1 (Poorest)')
q2a = subset(df, Period=='1990-2005' & Quintile=='Q2')
q3a = subset(df, Period=='1990-2005' & Quintile=='Q3')
q4a = subset(df, Period=='1990-2005' & Quintile=='Q4')
q5a = subset(df, Period=='1990-2005' & Quintile=='Q5 (Richest)')

# 2006-2019 time period (b)
q1b <- subset(df, Period=='2006-2019' & Quintile=='Q1 (Poorest)')
q2b = subset(df, Period=='2006-2019' & Quintile=='Q2')
q3b = subset(df, Period=='2006-2019' & Quintile=='Q3')
q4b = subset(df, Period=='2006-2019' & Quintile=='Q4')
q5b = subset(df, Period=='2006-2019' & Quintile=='Q5 (Richest)')

# displaying the descriptive statistics of the fertility rate for each time period
print("Summary (Mean + Median)")
print(summary(q1a$Fertility))
print(summary(q2a$Fertility))
print(summary(q3a$Fertility))
print(summary(q4a$Fertility))
print(summary(q5a$Fertility))

print("Standard Deviations for qa")
print(sd(q1a$Fertility))
print(sd(q2a$Fertility))
print(sd(q3a$Fertility))
print(sd(q4a$Fertility))
print(sd(q5a$Fertility))

print("Summary (Mean + Median) qb")
print(summary(q1b$Fertility))
print(summary(q2b$Fertility))
print(summary(q3b$Fertility))
print(summary(q4b$Fertility))
print(summary(q5b$Fertility))

print("Standard Deviations for qb")
print(sd(q1b$Fertility))
print(sd(q2b$Fertility))
print(sd(q3b$Fertility))
print(sd(q4b$Fertility))
print(sd(q5b$Fertility))

# effect size calculations
print("Absoulte effect size")
print(abs(mean(q1a$Fertility)-mean(q1b$Fertility)))     # quintile 1
print(abs(mean(q2a$Fertility)-mean(q2b$Fertility)))     # 2
print(abs(mean(q3a$Fertility)-mean(q3b$Fertility)))     # 3
print(abs(mean(q4a$Fertility)-mean(q4b$Fertility)))     # 4
print(abs(mean(q5a$Fertility)-mean(q5b$Fertility)))     # 5