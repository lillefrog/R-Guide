# scatter plot demo

# make dataset
set.seed(51) # fix random number so they are no longer random
height <- rnorm(30, mean=172, sd=15)
consumption <- 0.14 * height + rnorm(30, mean=0, sd=1)



# base scatter plot ----
plot(height, consumption,
     col = "#115f9a", # set color
     #xlim = c(30,80),
     main = 'Chocolate consumption vs height',
     xlab = 'Height(cm)',
     ylab = 'Chocolate (grams)',
     pch = 16, # set a filled circle as the symbol
     frame.plot = FALSE,
     cex = 2)