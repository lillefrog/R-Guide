# Box plot examples

MyColors = c("#115f9a", "#1984c5", "#22a7f0", "#48b5c4", "#76c68f", "#a6d75b", "#c9e52f", "#d0ee11", "#d0f400")
palette(MyColors)

data <- read.csv("~/doc/Rcode/RGuide/R-Guide/textbook figures/datasets/APD data/PatientData_extra_clean.csv", na.strings="NAN")

#png(file = "F02_Boxplot0.png", units="in", width=7, height=4, res=150)
par(mfrow=c(2,1), mar=c(5,5,4,2))
# Simple box plot ----
boxplot(FWR ~ AGE, data = data, 
        subset = AGE<17, 
        boxwex = 0.8, # box width
        notch = FALSE,
        frame = FALSE,
        col = c(MyColors[2]), # box color
        border = c(MyColors[1]), # border of box color
        main = 'Change in FW score with age',
        xlab = 'Age (years)',
        ylab = 'Filtered words score',
        horizontal = FALSE
        )


# grouped box plot ----
boxplot(FWR ~ SEX*AGE, data = data, 
        subset = AGE<10, 
        boxwex = 0.8, # box width
        notch = FALSE,
        frame = FALSE,
        col = c(MyColors[2],MyColors[4]), # box color
        border = c(MyColors[1],MyColors[3]), # border of box color
        horizontal = FALSE,
        xaxt="n", # remove the ugly x axis
        main = 'Change in FW score with age and gender',
        xlab = 'Age (years)',
        ylab = 'Filtered words score',
        ylim = c(20,100)
)


my_names = c("5 yrs","6 yrs","7 yrs","8 yrs","9 yrs")
axis(1, at = seq(1.5 , 10 , 2), # add names on the x axis
     labels = my_names , 
     tick=TRUE , cex=0.3)

legend(0.5,99, legend = c("Male", "Female"), # Add a nice Legend
       col=c(MyColors[2] , MyColors[4]),
       pch = 15, bty = "n", pt.cex = 3, cex = 1.2,  horiz = F, inset = c(0.1, 0.1))

for(i in seq(0.5 , 12 , 2)){ 
  lines(x=c(i,i),y=c(16.8,20),lty=1, col="black") # Add the small vertical lines
}

lines(x=c(0.5,10.5), y=c(16.8,16.8), lty=1, col="black") # Add the last bit of the x axis
#dev.off()
# ----









