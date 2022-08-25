# scatter plot example

MyColores = c("#115f9a", "#1984c5", "#22a7f0", "#48b5c4", "#76c68f", "#a6d75b", "#c9e52f", "#d0ee11", "#d0f400")
MyTransparentCol = c("#115f9aA9", "#22a7f0A9", "#48b5c4A9", "#76c68fA9", "#a6d75b70", "#c9e52f70", "#d0ee1170", "#d0f40070")

#default <- palette()

palette(MyColores)

# Load the dataset ----
data <- read.csv("~/doc1/OUH/E07 Videnskabsteori og Statestik/Datasets/Heart disease/processed.cleveland.data", header=FALSE)

age <- data$V1
gender <- data$V2
bloodPres <- data$V4
cholesterol <- data$V5
maxHeartRate <- data$V8

png(file = "F06_ScatterPlot.png", units="in", width=11, height=7, res=150)
par(mfrow=c(2,2)) #, mai = c(0.9, 0.8, 0.3, 0.1), oma = c(0.1, 0.1, 0.1, 0.1)


# base scatter plot ----
plot(age, maxHeartRate,
     col = "#115f9a", # set color
     xlim = c(30,80),
     main = 'Blood pressure vs age',
     xlab = 'Age(years)',
     ylab = 'Blood pressure(mm Hg)',
     pch = 16, # set a filled circle as the symbol
     frame.plot = FALSE,
     cex = 2)

# Scatter plot with transparency ----
plot(age, maxHeartRate,
     col = "#115f9a90", # set a transparent color the last two digits are transparency
     xlim = c(30,80),
     main = 'Blood pressure vs age (transparent)',
     xlab = 'Age(years)',
     ylab = 'Blood pressure(mm Hg)',
     pch = 16, # set a filled circle as the symbol
     frame.plot = FALSE,
     cex = 2)

# Scatter plot two groups ----
symbol <- gender
symbol = replace(symbol, symbol==0, 15)
symbol = replace(symbol, symbol==1, 4)

plot(age, maxHeartRate, col=as.factor(gender),
     xlim = c(30,80),
     main = 'Blood pressure vs age and gender',
     xlab = 'Age(years)',
     ylab = 'Blood pressure(mm Hg)',
     pch = gender+15,
     frame.plot = FALSE,
     cex = 2)

legend(30, 105, legend=c("Female", "Male"), 
       col = MyColores, 
       cex = 1, # text size in legend
       pch = c(15,16), # symbol type in legend (15 for female and 16 for male)
       pt.cex = 2) # set point size in legend


# Scatter plot with unmatched symbols ----

symbol <- replace(gender, gender==0, 15)
symbol <- replace(symbol, symbol==1, 4)

plot(age, maxHeartRate, col=as.factor(gender),
     xlim = c(30,80),
     main = 'Blood pressure vs age and gender',
     xlab = 'Age(years)',
     ylab = 'Blood pressure(mm Hg)',
     pch = symbol,
     frame.plot = FALSE,
     cex = 2)

legend(30, 105, legend=c("Female", "Male"), 
       col = MyColores, 
       cex = 1, # text size in legend
       pch = c(15,4), # symbol type in legend (15 for female and 16 for male)
       pt.cex = 2) # set point size in legend


dev.off()
