# First Self Assessment
# making the vectors
commonStrain = c(0.17,0.20,0.13,0.20,0.24,0.25,0.15,0.21,0.24)
transgenicStrA = c(0.27,0.21,0.34,0.32,0.24,0.29,0.18,0.20,0.29)
transgenicStrB = c(0.25,0.33,0.37,0.33,0.31,0.27,0.30,0.30,0.28)

# Question 2 (Difference b/w mean of transgenic strains) 
avgStrA = mean(transgenicStrA)
avgStrB = mean(transgenicStrB)
avgDiff = abs(avgStrA-avgStrB)              # taking the absolute value

print(avgDiff)

# Q3 - difference of means of common and transgenic strain A
avgCommon = mean(commonStrain)
avgDiffCA = abs(commonStrain-avgStrA)       # taking magnitude

# Q4
peroxide = c(0.27,.21,.34,.32,.24,.29,.18,.2,.29)
growth = c(1.79,1.01,0.71,1.59,1.41,1.15,1.03,1.2,1.2)

# Q5 - plotting the data from Q4
plot(peroxide, growth, pch=19, xlab="Hydrogen Peroxide Concentration", ylab="Fungus Growth", main="Fungus Growth compared to Hydrogen Peroxide Concentration")

