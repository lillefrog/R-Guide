#  Repeated measures ANOVA
#  One within subject measure and no between subject measures
#  Be sure to run this from the beginning because 
#  otherwise vectors become longer and longer.
# library(car)
# rm(list = ls()) # use this to clear out all variables if you like it clean
##  You want to clear out old variables --with "rm(list = ls())" --
##  before building new ones.

ID <- c('P1','P2','P3','P4')
Before <- c(130,137,119,144)
week2 <- c(131,134,121,142)
week4 <- c(125,130,115,129)

data1 <-data.frame(ID,Before,week2,week4) # make the data frame in wide format
rm('ID','Before','week2','week4') # this just removes the temporary variables we made

# the ANOVA needs data in long format so we use reshape to convert from wide to long
datLong <- reshape(data = data1, varying = 2:4, v.names = "outcome", timevar
                   = "time", idvar = "ID", direction = "long")

# plot the data the data from each person gets it's own symbol
plot(datLong$time, datLong$outcome, pch = c(2,4,6,8), col = c(3,4,6,8), xlab = "Time", ylab = "Outcome")


# Tell R that time and ID should be considerede categories(factors) and not numbers
# If you don't do this R might think you are doing regression instead
datLong$time <- factor(datLong$time)
datLong$ID <- factor(datLong$ID)


# run the anova looking at outcome as a function of time and ID
modelAOV <- aov(outcome~time+Error(ID), data = datLong)
summary(modelAOV)




# Simple ANOVA comparison ----
# Here we just compare the outcomes at the different times
#modelAOV <- aov(outcome~time, data = datLong)
#summary(modelAOV)

# Notice that this is not significant, This is because between subject variability 
# is included in the calculation making the effect much harder to find.



