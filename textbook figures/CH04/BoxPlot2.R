# box plot 2

MyColors = c("#115f9a", "#1984c5", "#22a7f0", "#48b5c4", "#76c68f", "#a6d75b", "#c9e52f", "#d0ee11", "#d0f400")
palette(MyColors)

# path to data, check that it is correct on your computer
data <- read.csv("~/doc/Rcode/R-Guide/textbook figures/datasets/APD data/PatientData_extra_clean.csv", na.strings="NAN")

set.seed(52)
data1 <- rnorm(30, mean = 60, sd = 12) # generate data
data1[29] <- 15 # make outlier
data2 <- c(data1,data1)
name <- rep(c('Data','Plot'),c(30,30)) # make a list of 30 times "data" and 30 times "boxplot"

par(mai =  c(1, 1, 1, 1))
p <-boxplot(data2 ~ name,
        boxwex = 0.8, # box width
        notch = TRUE,
        frame = FALSE,
        col = c('#EEEEEE',MyColors[2]), # box color
        border = c('#BBBBBB',MyColors[1]), # border of box color
        main = 'Change in FW score with age',
        xlab = '',
        ylab = 'Filtered words score',
        ylim = c(0,100),
        xlim = c(0.5,3.5),
        horizontal = FALSE)

# abline(h=64,lty=2, col="red")

stripchart(data2 ~ name, 
           subset = name=='Data',
           vertical = TRUE, 
           method = "jitter",  
           add = TRUE, 
           pch = 19)

# Add explanation to figure

lines(x=c(2.01,2.7),y=c(78,91), col = "#48b5c4", lty = 1, lwd = 1)
text(2.7,91,'Whisker',pos = 4, cex = 1.5, col = "#48b5c4")

lines(x=c(2.01,2.7),y=c(15,10), col = "#48b5c4", lty = 1, lwd = 1)
text(2.7,10,'Outlier',pos = 4, cex = 1.5, col = "#48b5c4")



lines(x=c(2.4,2.7),y=c(49,46), col = "#48b5c4", lty = 1, lwd = 1)
text(2.7,46,'25th percentile',pos = 4, cex = 1.5, col = "#48b5c4")

lines(x=c(2.2,2.7),y=c(61,61), col = "#48b5c4", lty = 1, lwd = 1)
text(2.7,61,'50th percentile',pos = 4, cex = 1.5, col = "#48b5c4")

lines(x=c(2.4,2.7),y=c(69,76), col = "#48b5c4", lty = 1, lwd = 1)
text(2.7,76,'75th percentile',pos = 4, cex = 1.5, col = "#48b5c4")





