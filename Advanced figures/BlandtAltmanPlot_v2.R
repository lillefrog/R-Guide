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

# calculate the 
meanDifference = mean(difference)
sdDifference = 1.96*sd(difference)



# plot figure ----
symbols(means2, difference2, 
        circles=sqrt(sumReal$Freq), 
        inches=0.15,
        fg = "tomato4",
        bg = "tomato",
        xlab = 'Mean score',
        ylab = 'Difference in score')


abline(h=meanDifference, col="blue4")
abline(h=meanDifference - sdDifference, col="blue", lty = 2)
abline(h=meanDifference + sdDifference, col="blue", lty = 2)

text(meanDifference+(1.96*sdDifference),2,'test')
