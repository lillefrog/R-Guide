# Linear regression Example 2

# correlated data ----
AGE <- c(10, 17, 59, 33, 45, 71, 40, 42, 25)
HL  <- c( 0,  5, 30, 15, 25, 40, 24, 18, 12) # Hearing Loss
TAI <- c(30 , 5, 15, 40,  0, 25, 24, 12, 22)  # Tea appreciation index
CDI <- c(0 , 20, 39, 30, 35, 41, 32, 34, 21) # Chocolate dependency index

# fit 2 points, true correlation ----
plot(AGE, HL,
     col = "#115f9a", # set color
     main = '',
     xlab = 'Age(years)',
     ylab = 'Hearing loss (dB)',
     pch = 16, # set a filled circle as the symbol
     frame.plot = FALSE,
     cex = 2)

regression1 <- lm(HL ~ AGE) # calculate the regression model
abline(regression1, col = 'red') # plot the regression model

# plot lines marking the residuals in the plot
for (i in 1:length(AGE)) {
  y <- regression1$coefficients[1] + regression1$coefficients[2] * AGE[i]
  lines(c(AGE[i],AGE[i]), c(y,HL[i]), col = 'red', lty = 2, lwd = 2)
}



summary(regression1)

plot(regression1)
