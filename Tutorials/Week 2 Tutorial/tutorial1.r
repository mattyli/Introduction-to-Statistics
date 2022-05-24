# making the vectors
Before2000 = c(13,1,1,1,1,1)            # making the vector with albums before 2000
After2000 = c(1,2,1,2,1,3,1)            # making the vector with albums after 2000

maxB2K = max(Before2000)

beforeMean = mean(Before2000)
afterMean = mean(After2000)

differenceOfMeans = (beforeMean - afterMean)

print(differenceOfMeans)    # can just write variable name (but I want better readability)

# the band was more popular after 2000 as the average chart position
# was higher (1.6) than before 2000 (3)

# Matthew Li
# Ciera Shannon
# Sarita Samsoodeen
# Ahmed Elsaeed