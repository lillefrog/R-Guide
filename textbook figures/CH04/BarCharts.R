# bar charts ----
# This file takes the Titanic dataset that is build in i R-studio and plots
# 4 different types of bar plots

# The png() and dev.off() lines are only used to save the figure automatically 
#png(file = "F02_BarCharts.png", units="in", width=7, height=4, res=150)

# here I have my standard colors
MyColores = c("#115f9a", "#1984c5", "#22a7f0", "#48b5c4", "#76c68f", "#a6d75b", "#c9e52f", "#d0ee11", "#d0f400")

par(mfrow=c(2,2)) #, mai = c(0.9, 0.8, 0.3, 0.1), oma = c(0.1, 0.1, 0.1, 0.1)

# simple bar plot
total = Titanic[,1,2,1]+Titanic[,1,2,2]+Titanic[,1,1,1]+Titanic[,1,1,2]+Titanic[,2,2,1]+Titanic[,2,2,2]+Titanic[,2,1,1]+Titanic[,2,1,2]
dataAdult = as.data.frame(total) # merge adult survivors + non survivors
barplot(total, data = dataAdult,
        col = MyColores[2],
        main = "People on the Titanic", 
        ylab = "Number of people", 
        xlab = "Ticket Class")

# stacked bar plot
dataAdult = as.data.frame(Titanic[,,2,1]+Titanic[,,2,2]+Titanic[,,1,1]+Titanic[,,1,2]) # merge survivors + non survivors
barplot(Freq ~ Sex + Class, data = dataAdult, legend.text = TRUE, args.legend = list(x = 'topleft',bty = "n"),
        col = c(MyColores[1],MyColores[3]),
        main = "People on the Titanic by gender", 
        ylab = "Number of people", 
        xlab = "Ticket Class")

# Grouped bar plot 1
dataAdult = as.data.frame(Titanic[,,1,2]+Titanic[,,2,2]) # merge adult survivors
barplot(Freq ~ Sex + Class, data = dataAdult, legend.text = TRUE, args.legend = list(x = 'topleft',bty = "n"),
        col = c(MyColores[1],MyColores[3]),
        beside = TRUE,
        main = "Survivors from the Titanic", 
        ylab = "Number of Survivors",
        ylim = c(0,800),
        xlab = "Ticket Class")

# Grouped bar plot 2
dataAdult = as.data.frame(Titanic[,,1,1]+Titanic[,,2,1]) # merge adult survivors
barplot(Freq ~ Sex + Class, data = dataAdult, legend.text = TRUE, args.legend = list(x = 'topleft',bty = "n"),
        col = c(MyColores[1],MyColores[3]),
        beside = TRUE,
        main = "NonSurvivors from the Titanic", 
        ylab = "Number of dead", 
        ylim = c(0,800),
        xlab = "Ticket Class")

#dev.off()
#----