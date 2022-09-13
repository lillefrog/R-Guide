# violin plot


MyColors = c("#115f9a", "#1984c5", "#22a7f0", "#48b5c4", "#76c68f", "#a6d75b", "#c9e52f", "#d0ee11", "#d0f400")
palette(MyColors)

data <- read.csv("~/Doc/OUH/E07 Videnskabsteori og Statestik/Datasets/APD data/PatientData_extra_clean.csv", na.strings="NAN")



library(vioplot)


par(cex=1.9) # changes the default text size
vioplot(FWR ~ AGE, data = data, 
        subset = AGE>6 & AGE<15,
        drawRect = TRUE, # draw box inside plot
        side = "both", # Draw left right or both sides of violin
        main = "", # Title
        cex = 1, # size of median dot
        cex.axis = 0.8, # size of text on y axis
        cex.lab = 3, # no effect
        cex.names = 0.8, # size of text on x axis
        cex.main = 2, # text size of title
        cex.sub = 1, # no effect
        outer = FALSE,
        xlab = "Age (years)",
        ylab = "Filtered Words score",
        sub = "", # text below x label
        frame.plot = FALSE,
        col = MyColors[3]) # set color or colors of plot, 

