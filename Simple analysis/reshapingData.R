# demo converting wide data to long data for ANOVA or other tests that need long data
# There are many ways of doing this but this is using reshape() from the base package

# first we generate a wide dataset where we have recorded ABR measurements at 4
# different groups 

ID <- 1:94 # generate a ID number for each person
fol <- rnorm(n = 94, mean = 1.42, sd = 0.09) 
per <- rnorm(n = 94, mean = 1.39, sd = 0.1)
lut <- rnorm(n = 94, mean = 1.45, sd = 0.12)
cont <- rnorm(n = 94, mean = 1.44, sd = 0.14)

m <- cbind(ID, fol, per, lut, cont) # create a matrix
simulatedData <- as.data.frame(m) # convert matrix to a data frame

head(simulatedData) # show the first lines of simulated data so we can see that it is wide data
boxplot(simulatedData[,2:5]) # we can also plot it as a boxplot (ignoring the ID collum)


# reshape the data
longSimulatedData <- reshape(simulatedData, 
                 idvar = "ID",         # What is the identifier
                 varying = list(2:5),  # What columns contain our original data
                 timevar = 'group',    # name of column identifying the groups
                 v.names = "latency",  # Name of column with combined data
                 times = c('fol','per','lut','cont'),     # What do you want to call the groups if you give no info it just uses a number
                 direction = "long")   # Convert to long format (the alternative is "wide")





# and we can also test that it works with the ANOVA ----
anovaResult <- aov(latency~group, longSimulatedData)

# get a summary of the results of the ANOVA
summary(anovaResult) 

# compare individual groups with Tukey's honestly significant difference test
TukeyHSD(anovaResult) 


