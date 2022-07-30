data = read.csv("Insomnia_data.csv", colClasses=c('factor', 'factor', 'numeric'))
treatment = data$Treatment
sleep = data$Sleep
boxplot(sleep~treatment, xlab = "treatment type", ylab="sleep duration (hours)", main = "comparison of the effectiveness of different sleep treatments")

model = lm(sleep~treatment)
summary(model)

AOV = aov(model)
summary(AOV)

# computing the critical f-score, qf(type I error, df of numerator, df denominator)
qf(0.95, 3, 196)

shapiro.test(residuals(model))

bartlett.test(sleep~treatment)

TukeyHSD(AOV)