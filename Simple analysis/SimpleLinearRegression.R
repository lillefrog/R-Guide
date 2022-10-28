# example of linear regression 

# Generate Example data
age    <- c(3, 4, 6, 5, 9, 11, 13)
height <- c(60, 80, 110, 95, 140, 150, 160)
myData <- data.frame(age,height)

# look at the data
plot(myData$age,myData$height)


# calculate the linear regression
# height = slope * age + y-intercept (is what we would normally write) 
# height = y-intercept + slope1 * age   (is how r expects it and you don't need the y-intercept)
myModel <- lm(height ~ age, data = myData) # we use the ~ when describing the model to awoid confusion

# now we have the fitted model but we want the summary of the result
summary(myModel)

# the residuals should be approximately symmetrical with a median close to 0, Remember that for 
# a linear model it is the residuals that should be normally distributed

# The coefficients has two sets of values, a more complex model would have more
# the first is the intercept, this just tells us where the line intercepts the y-axis
# there is the estimate for the intercept and the standard error for that intercept, we could use
# that to calculate the confidence interval for the intercept too. The t-value is
# used to calculate the p-value. The p-value tells us if the intercept is significantly
# different from 0. Often we don't really care about the p-value for the intercept
#
# The next line is in this case called 'age' because it is the slope we should multiply
# age with. You could ask why it is not called slope but that is because we can have 
# more than one slope so it is important what variable a slope comes from.
# If age is a useful predictor of height we would expect the p-value for the slope
# to be significant

# The significance codes just tells us what the stars *** mean

# The last block of text tells us how good the model is. 
# The Multiple R-squared is the same as R-squared for correlation and tells us how
# much of the variation our model explains.
# The adjusted R-squared is the R-squared scaled by the number of parameters in the model, 
# it is only really relevant for multiple linear regression
# The last line tells us if the R-Squared value is significantly different from 0
# it will show F-statistic and degrees of freedom but we only really care about the p-value
# If this value is significant we know that R-squared is different from 0 

# you can plot the line in your figure using abline() 
abline(myModel)

# REMEMBER that the values you find here are estimates, you do not know the true
# slope or intercept and that is why they have standard errors 

# we can plot diagnostic plots for the model with plot
plot(myModel) 

# youtube links
# https://www.youtube.com/watch?v=u1cc1r_Y7M0

