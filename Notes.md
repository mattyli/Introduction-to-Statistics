## Notes
### Commands
To open an R console:
```
    CTRL + SHIFT + S
```

Use '$' to access individuals columns of a dataframe
```R
    dataSet$DataPrint
```

### Variables
use the '=' operator to assign a value to a variable
```R
    apple = 2
```

can be combined to produce a dataframe of values in one column, based on the values of another column
```R
    sampleDF <- df$Time[df$Employee == "Ben"]
    # sampleDF gets the dataframe time values where the employee is "Ben"
```

### Useful Functions
sample() - given a vector and N, will select a random sample of size N from the given vector
```R
    sample(vector, n)
```

plot() - for plotting data
```R
    plot(xData, yData)      # basic syntax, other parameters you may enter as well
```

subset() - generate subset of given data given a few parameters
```R
    subset(originalData, condition)
```

boxplot() - generate boxplots
```R
    boxplot(x~y, data)  # x is variable of interest across levels of y, y is categoric
```

## T Tests
t.test(data, ref_value, alternative=none)

