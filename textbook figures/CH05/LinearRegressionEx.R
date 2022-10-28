# linear regression examples showing that correlation will be very confident 
# with few points and we always have to look at the p-value too



age = c(1,2,3,4,5)
height = c(76.8, 85.6, 94.8, 102.9, 116.1)

par(mfrow = c(2,2)) #, mai = c(0.9, 0.8, 0.3, 0.1), oma = c(0.1, 0.1, 0.1, 0.1)

R2 <- expression("My Title"^2)

#plot(1:10, main = R2)


# fit 2 points, true correlation ----
plot(age[1:2], height[1:2],
     col = "#115f9a", # set color
     xlim = c(0,5),
     ylim = c(70,120),
     main = 'True correlation (n=2)',
     xlab = 'Age(years)',
     ylab = 'Height(cm)',
     pch = 16, # set a filled circle as the symbol
     frame.plot = FALSE,
     cex = 2)

regression1 <- lm(height[1:2] ~ age[1:2]) # calculate the regression model
abline(regression1, col = 'red') # plot the regression model

regression1$coefficients[1] # intercept (expected height at age 0)
regression1$coefficients[2] # slope (expected increase in height pr year)

fit1 <- summary(regression1)

pVal1 <- summary(regression1)$coefficients[2,4] # p-value for the slope being different from 0
RSquared1 <- summary(regression1)$r.squared # s squared value

text(2.5, 87, bquote(R^2 == .(format(RSquared1, digits = 2, nsmall = 2))),adj = 0) # this is very complicated because I want to add a superscript
text(2.5, 80, paste('p-value = ', format(pVal1, digits = 2, nsmall = 2, scientific = FALSE)),adj = 0)



# fit 5 points, true correlation ----
plot(age, height,
     col = "#115f9a", # set color
     xlim = c(0,5),
     ylim = c(70,120),
     main = 'True correlation (n=5)',
     xlab = 'Age(years)',
     ylab = 'Height(cm)',
     pch = 16, # set a filled circle as the symbol
     frame.plot = FALSE,
     cex = 2)

regression2 <- lm(height ~ age) # calculate the regression model
abline(regression2, col='red') # plot the regression model

regression2$coefficients[1] # intercept (expected height at age 0)
regression2$coefficients[2] # slope (expected increase in height pr year)

fit2 <- summary(regression2)

pVal2 <- summary(regression2)$coefficients[2,4] # p-value for the slope being different from 0
RSquared2 <- summary(regression2)$r.squared # s squared value

text(2.5, 88, bquote(R^2 == .(format(RSquared2, digits = 2, nsmall=2))),adj=0) # this is very complicated because I want to add a superscript
text(2.5, 81, paste('p-value = ', format(pVal2, digits = 2, nsmall=2, scientific=FALSE)),adj=0)

age = c(1,2,3,4,5)
height = c(94.8, 116.1, 76.8, 102.9, 85.6)



# fit 2 points, no correlation ----
plot(age[1:2], height[1:2],
     col = "#115f9a", # set color
     xlim = c(0,5),
     ylim = c(70,120),
     main = 'No correlation (n=2)',
     xlab = 'Age(years)',
     ylab = 'Height(cm)',
     pch = 16, # set a filled circle as the symbol
     frame.plot = FALSE,
     cex = 2)

regression3 <- lm(height[1:2] ~ age[1:2]) # calculate the regression model
abline(regression3, col='red') # plot the regression model

regression3$coefficients[1] # intercept (expected height at age 0)
regression3$coefficients[2] # slope (expected increase in height pr year)

fit3 <- summary(regression3)

pVal3 <- summary(regression3)$coefficients[2,4] # p-value for the slope being different from 0
RSquared3 <- summary(regression3)$r.squared # s squared value

text(2.5, 89, bquote(R^2 == .(format(RSquared3, digits = 2, nsmall=2))),adj=0) # this is very complicated because I want to add a superscript
text(2.5, 82, paste('p-value = ', format(pVal3, digits = 2, nsmall=2, scientific=FALSE)),adj=0)


# fit 5 points, no correlation ----
plot(age, height,
     col = "#115f9a", # set color
     xlim = c(0,5),
     ylim = c(70,120),
     main = 'No correlation (n=5)',
     xlab = 'Age(years)',
     ylab = 'Height(cm)',
     pch = 16, # set a filled circle as the symbol
     frame.plot = FALSE,
     cex = 2)

regression4 <- lm(height ~ age) # calculate the regression model
abline(regression4, col='red') # plot the regression model

regression4$coefficients[1] # intercept (expected height at age 0)
regression4$coefficients[2] # slope (expected increase in height pr year)

fit4 <- summary(regression4)

pVal4 <- summary(regression4)$coefficients[2,4] # p-value for the slope being different from 0
RSquared4 <- summary(regression4)$r.squared # s squared value

text(2.5, 90, bquote(R^2 == .(format(RSquared4, digits = 2, nsmall=2))),adj=0) # this is very complicated because I want to add a superscript
text(2.5, 83, paste('p-value = ', format(pVal4, digits = 2, nsmall=2, scientific=FALSE)),adj=0) # here I use format to make sure that the numbers are formatted correctly

# xx = cor.test(age, height, method=c("pearson", "kendall", "spearman"))