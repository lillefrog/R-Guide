# Plotting Bland-Altman plots ----

# install.packages('BlandAltmanLeh')
library('BlandAltmanLeh')

# generate two random sets of data (it has to be matched number of samples)
group1 <- rnorm(20)
group2 <- rnorm(20)

# Plot simple Bland-Altman plot
bland.altman.plot(group1, group2, xlab="mean of measurements", 
                  ylab="differences between measurements", main="Bland-Altman Plot")

# plot more advanced Bland-Altman plot
bland.altman.plot(group1, group2, 
                  xlab="mean of measurements", 
                  ylab="differences", 
                  main="Bland-Altman Plot", 
                  conf.int=.95, # Show the 95% confidence intervals around all lines
                  lwd = 2, # Set the line width for the symbols
                  pch = 6  # Symbol type 1=circle is the defalut
                  )

# calculate the stats for Bland-Altman plot
myStats <- bland.altman.stats(group1,group2)




# plot data with many overlapping values (shown in a sunflower plot)
groupA <- c(1,1,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,4,4,4,5,6,6,7,7,7,7,7,7,7,7,7,7,7)
groupB <- c(1,1,1,2,2,2,3,1,4,2,5,3,3,3,3,3,4,4,5,5,5,5,6,6,7,7,7,7,7,7,7,7,7,7,7)
bland.altman.plot(groupA, groupB,
                  sunflower=TRUE, 
                  xlab="Mean",
                  ylab="Difference",
                  main="Bland-Altman plot with Sunflower")

