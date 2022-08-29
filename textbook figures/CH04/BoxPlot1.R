# box plot 2

#install.packages("pBrackets")

library(pBrackets)

# Load my colors and set them as the palette
MyColors = c("#115f9a", "#1984c5", "#22a7f0", "#48b5c4", "#76c68f", "#a6d75b", "#c9e52f", "#d0ee11", "#d0f400")
palette(MyColors)

# Generate data set for plotting ---- 

set.seed(52)
data1 <- rnorm(30, mean = 60, sd = 12) # generate data
data1[29] <- 15 # make outlier
data2 <- c(data1,data1)
name <- rep(c('Data','Plot'),c(30,30)) # make a list of 30 times "data" and 30 times "boxplot"

#png(file = "F07_BoxPlotEx1.png", units="in", width=7, height=6, res=150)

# Plot the box plot and a strip chart on top of each other ----
par(mai =  c(1, 1, 0.5, 0))
p <-boxplot(data2 ~ name,
        boxwex = 0.8, # box width
        notch = TRUE,
        frame = FALSE,
        col = c('#EEEEEE77',MyColors[2]), # box color
        border = c('#BBBBBB77',MyColors[1]), # border of box color
        #main = '',
        xlab = '',
        ylab = 'Filtered words score',
        ylim = c(0,100),
        xlim = c(0.5,3.8),
        horizontal = FALSE)


stripchart(data2 ~ name, 
           subset = name=='Data',
           vertical = TRUE, 
           method = "jitter",  
           add = TRUE, 
           pch = 19)


# Add explanation to figure ----

txtSize = 1.2
txtCol = "#990000"

lines(x=c(2.01,2.7),y=c(75,83), col = txtCol, lty = 1, lwd = 1)
text(2.7,83,'Whisker',pos = 4, cex = txtSize, col = txtCol)

lines(x=c(2.41,2.7),y=c(69.4,73), col = txtCol, lty = 1, lwd = 1)
text(2.7,73,'75th percentile',pos = 4, cex = txtSize, col = txtCol)

lines(x=c(2.52,2.7),y=c(61.3,63), col = txtCol, lty = 1, lwd = 1)
text(2.7,63,'Notch',pos = 4, cex = txtSize, col = txtCol)

lines(x=c(2.21,2.7),y=c(61.3,53), col = txtCol, lty = 1, lwd = 1)
text(2.7,53,'50th percentile',pos = 4, cex = txtSize, col = txtCol)

lines(x=c(2.41,2.7),y=c(49.2,43), col = txtCol, lty = 1, lwd = 1)
text(2.7,43,'25th percentile',pos = 4, cex = txtSize, col = txtCol)

lines(x=c(2.21,2.7),y=c(34.4,25), col = txtCol, lty = 1, lwd = 1)
text(2.7,25,'Minimum value \nexcluding Outliers',pos = 4, cex = txtSize, col = txtCol)

lines(x=c(2.02,2.7),y=c(15,10), col = txtCol, lty = 1, lwd = 1)
text(2.7,10,'Outlier',pos = 4, cex = txtSize, col = txtCol)

brackets(2.43, 55.5, 2.43, 67, h = -0.08, ticks = 0.5, curvature = 0.5, type = 1, col = txtCol, lwd = 1, lty = 1, xpd = FALSE)

#dev.off()



