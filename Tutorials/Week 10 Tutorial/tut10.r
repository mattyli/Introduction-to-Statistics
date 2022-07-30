# setwd(myDir)
data = read.csv("Politicalparty_data.csv", colClasses=c('factor', 'factor', 'factor', 'factor'))
tb = table(data$Race, data$Party)
chisq.test(tb)
qchisq(0.95, 9) # assuming type I = 0.05, df = 9

# code was written in jupyter notebook, hence setwd() wasn't needed
# code by Matthew Li