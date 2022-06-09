setwd("C:/Users/02mat/OneDrive/Desktop/Intro-To-Stats/Introduction-to-Statistics/Tutorials/Week 5 Tutorial") #nolint
url = "branding.csv"
data = read.csv(url, colClasses=c('factor', 'factor', 'factor'))    #nolint (year is categorical)

econBrand = subset(data, Issue == "Economy")    # every issue here is Economy
tb = (table(econBrand$Year, econBrand$Type))           #nolint type this variable to produce table in console
bp = barplot(t(tb), main = "Economy Branding Over Four Election Periods", xlab = "Election Period (year)", ylab = "Branding instances", col=c("red", "lightblue", "green"), ylim = c(0,950), legend = TRUE, args.legend = list(bty="n", x ="top"))

typeIsPlatform = subset(data, Type == "Platform")       # subset where all types are platform
tpTable = table(typeIsPlatform$Issue, typeIsPlatform$Year)

platformBar = barplot(tpTable, main = "Issues addressed over four election periods", xlab = "election period (year)", ylab = "frequency")
legend("top", legend = c("Social Services", "Social Issues", "Security and International Relations", "Multiculturalism", "Economy"), pch = 19)

# Could not figure out how to reposition the legend properly
# did not have enough time due to computer issues
# emailed TA Christopher Russell about this during the tutorial
# did not recieve a prompt response