# violin plot


MyColors = c("#115f9a", "#1984c5", "#22a7f0", "#48b5c4", "#76c68f", "#a6d75b", "#c9e52f", "#d0ee11", "#d0f400")
palette(MyColors)

data <- read.csv("~/Doc/OUH/E07 Videnskabsteori og Statestik/Datasets/APD data/PatientData_extra_clean.csv", na.strings="NAN")



library(vioplot)
x1 <- data$FWR[data$AGE==4]
x2 <- data$FWR[data$AGE==6]
x3 <- data$FWR[data$AGE==8]
vioplot(x1, x2, x3, names=c("4 cyl", "6 cyl", "8 cyl"),
        col="gold")
title("Violin Plots of Miles Per Gallon")

vioplot(FWR ~ AGE, data = data, 
        subset = AGE<17, 
        col = MyColors[3])


plot(1:10, 1:10, col=1:10, pch=19, cex=8, xlab="", ylab="")