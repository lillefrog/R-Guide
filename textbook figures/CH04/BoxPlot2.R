# box plot with notches ----
# Notches are used in box plots to help visually assess whether the medians of distributions differ. 
# If the notches do not overlap, this is evidence that the medians are different.

data <- read.csv("~/doc/Rcode/R-Guide/textbook figures/datasets/APD data/PatientData_extra_clean.csv", na.strings="NAN")

# png(file = "F07_BoxPlot2.png", units="in", width=7, height=4, res=150)
par(mar=c(5,5,2,2))

boxplot(FWR ~ AGE, data = data, 
        subset = AGE>6 & AGE<15, 
        boxwex = 0.8, # box width
        notch = TRUE,
        frame = FALSE,
        col = c(MyColors[2]), # box color
        border = c(MyColors[1]), # border of box color
        xlab = 'Age (years)',
        ylab = 'Filtered words score',
        horizontal = FALSE
)


abline(h=64,lty=2, col="red")
abline(h=56,lty=2, col="red")

#dev.off()