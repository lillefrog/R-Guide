# example of multiple linear regression 

# https://www.youtube.com/watch?v=VvlqA-iO2HA

# Generate Example data
age    <- c(3, 4, 6, 5, 9, 11, 13)
height <- c(60, 80, 110, 95, 140, 150, 160)
parentHeight <- c(172, 180, 185, 192, 189, 180, 177)
myData <- data.frame(age,height,parentHeight)

# look at the data, this plots all the variables against each other 
plot(myData)

# calculate the linear regression
# height = y-intercept + slope1 * age + slope2 * parentHeight   
myModel <- lm(height ~ age + parentHeight , data = myData) # we use the ~ when describing the model to avoid confusion

# now we have the fitted model but we want the summary of the result
summary(myModel)

# the residuals should be approximately symmetrical with a median close to 0, Remember that for 
# a linear model it is the residuals that should be normally distributed

# The coefficients has three sets of values, a simple model would only have one
# the first is the intercept, this just tells us where the line intercepts the y-axis
# there is the estimate for the intercept and the standard error for that intercept, we could use
# that to calculate the confidence interval for the intercept too. The t-value is
# used to calculate the p-value. The p-value tells us if the intercept is significantly
# different from 0. Often we don't really care about the p-value for the intercept
#
# The next line is in this case called 'age' because it is the slope we should multiply
# age with. If age is a useful predictor of height we would expect the p-value for the slope
# to be significant
#
# The third line is in this case called 'parentHeight' because it is the slope we should multiply
# parentHeight with. If parentHeight is a useful predictor of height we would expect the p-value for the slope
# to be significant.If one of the slopes isn't significant we should probably remove it from the model.


# The significance codes just tells us what the stars *** mean

# The last block of text tells us how good the model is. 
# The Multiple R-squared is the same as for correlation and tells us how much of the
# variation our model explains.
# The adjusted R-squared is the R-squared scaled by the number of parameters in the model, this is
# the value we should be looking at when comparing models especially multiple linear models

# The last line tells us if the R-Squared value is significantly different from 0
# it will show F-statistic and degrees of freedom but we only really care about the p-value
# If this value is significant we know that R-squared is different from 0 


# REMEMBER that the values you find here are estimates, you do not know the true
# slope or intercept and that is why they have standard errors

# Comparison to single linear regression
# It is often a good idea to compare multiple linear regression to simple linear 
# regression, we would hope that we get a better adjusted R-squared value. If not the
# simple linear regression is just as good and the other variables we add don't give 
# us more useful information


# Youtube links
# statquest
# https://www.youtube.com/watch?v=zITIFTsivN8 (teori)
# https://www.youtube.com/watch?v=hokALdIst8k (praksis)

# https://www.youtube.com/watch?v=VvlqA-iO2HA


