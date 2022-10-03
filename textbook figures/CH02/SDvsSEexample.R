# Standard error versus standard deviation
#png(file = "03_SD_Vs_SE.png", units="in", width=7, height=4, res=300)

set.seed(49) # set a default seed to make sure we get the same result each time
hight <- rnorm(20, mean=172, sd=10) # generate the data
bloks <- seq(100, 220, by=10) # how many blocks do we want in the histogram?
linesY1 = c(8, 15)
linesY2 = c(80, 150)

par(mfrow=c(2,2)) # make 2x2 plots
hist(hight, breaks = bloks, xlim = c(100, 220), ylim = c(0, 11), xlab="Height of students", main="Mean ±SD (N=20)", yaxt="n") # draw the first histogram
axis(2, at = seq(0, 10, by = 5), las=2)
lines(c(mean(hight), mean(hight)), linesY1,col = "black", lwd = 1.5)
lines(c(mean(hight)+sd(hight), mean(hight)+sd(hight)), linesY1, col = "blue", lty = "dotted", lwd = 1.5)
lines(c(mean(hight)-sd(hight), mean(hight)-sd(hight)), linesY1, col = "blue", lty = "dotted", lwd = 1.5)

median1 = mean(hight) 
pctile25 = mean(hight) - sd(hight) / sqrt(length(hight))
pctile75 = mean(hight) + sd(hight) / sqrt(length(hight))

hist(hight, breaks = bloks, xlim = c(100, 220), ylim = c(0,11), xlab="Height of students", main="Mean ±SE (N=20)", yaxt="n") # draw the second histogram
axis(2, at = seq(0, 10, by = 5), las=2)
lines(c(median1, median1), linesY1,col = "black", lwd = 1.5)
lines(c(pctile25, pctile25), linesY1, col = "blue", lty = "dotted", lwd = 1.5)
lines(c(pctile75, pctile75), linesY1, col = "blue", lty = "dotted", lwd = 1.5)

hight2 <- rnorm(200, mean=172, sd=10) # generate the data

hist(hight2, breaks = bloks, xlim = c(100, 220), ylim = c(0, 110), xlab="Height of students", main="Mean ±SD (N=200)", yaxt="n") # draw the third histogram
axis(2, at = seq(0, 100, by = 50), las=2)
lines(c(mean(hight2), mean(hight2)), linesY2, col = "black", lwd = 1.5)
lines(c(mean(hight2)+sd(hight2), mean(hight2)+sd(hight2)), linesY2, col = "blue", lty = "dotted", lwd = 1.5)
lines(c(mean(hight2)-sd(hight2), mean(hight2)-sd(hight2)), linesY2, col = "blue", lty = "dotted", lwd = 1.5)

median1 = mean(hight2) 
pctile25 = mean(hight2) - sd(hight2) / sqrt(length(hight2))
pctile75 = mean(hight2) + sd(hight2) / sqrt(length(hight2))

hist(hight2, breaks = bloks, xlim = c(100, 220), ylim = c(0, 110), xlab="Height of students", main="Mean ±SE (N=200)", yaxt="n") # draw the fourth histogram
axis(2, at = seq(0, 100, by = 50), las=2)
lines(c(median1, median1), linesY2, col = "black", lwd = 1.5)
lines(c(pctile25, pctile25), linesY2, col = "blue", lty = "dotted", lwd = 1.5)
lines(c(pctile75, pctile75), linesY2, col = "blue", lty = "dotted", lwd = 1.5)

# dev.off() # enable this if you want to save a png file (first line also has to be active)