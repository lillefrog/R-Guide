# Demo of manual Bland-Altman plot in base r
# 

# The raw data, in this demo there are a lot over duplicates to demostrate the change in
# size of the bubbles when there are several dublicates
groupA <- c(1,1,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,4,4,4,5,6,6,7,7,7,7,7,7,7,7,7,7,7)
groupB <- c(1,1,1,2,2,2,3,1,4,2,5,3,3,3,3,3,4,4,5,5,5,5,6,6,7,7,7,7,7,7,7,7,7,7,7)

# calculate the difference and the mean for each data pair
difference <- groupA-groupB
mean <- rowMeans(cbind(groupA,groupB))



# Make a table for all combinations of values and get a count of dublicates
numberOfdublicates <- as.data.frame(table(difference,mean))

# Remove all values with 0 dublicates
sumReal <- numberOfdublicates[numberOfdublicates$Freq != 0,]

# Convert results to numbers (table converts them to factors)
means2 <- as.numeric(as.character(sumReal$mean))
difference2 <- as.numeric(as.character(sumReal$difference))

# calculate the position of the lines ----
meanDifference = mean(difference)
sdDifference = 1.96*sd(difference)



# plot figure ----
symbols(means2, difference2, 
        circles=sqrt(sumReal$Freq), # Set the area of the circle
        inches=0.15, # this is setting the size of the bubbles
        fg = "tomato4", # color of the line of the symbols
        bg = "tomato",  # color of the fill of the symbosl
        xlab = 'Mean score',
        ylab = 'Difference in score'
        )


# Draw the lines for mean and SD ----
abline(h=meanDifference, col="blue4")
abline(h=meanDifference - sdDifference, col="blue", lty = 2)
abline(h=meanDifference + sdDifference, col="blue", lty = 2)

textShift = 0.1 # This shifts the text down a bit so it is not on the line, you 
                # might have to change it if your data in on another scale

# Add the text, this is not strictly required but it makes the figure easier to understand
text(7,meanDifference+(sdDifference)-textShift,'+1.96*SD', col="blue")
text(7,meanDifference-(sdDifference)-textShift,'-1.96*SD', col="blue")
text(7,meanDifference-textShift,sprintf(meanDifference, fmt = 'mean = %.2f'), col="blue4")

