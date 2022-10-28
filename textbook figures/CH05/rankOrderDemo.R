# Rank order demo  ----
AGE <- c(10, 17,  33, 45, 59, 71)
CDI <- c(0 , 20,  30, 35, 39, 41) # Chocolate dependency index

# normal plot
plot(AGE, CDI, frame.plot = FALSE, cex = 2, pch = 16, col = "#115f9a", cex.axis = 1.3, cex.lab = 1.5, xlim = c(0,70))

# plot with ranks
plot(AGE, CDI, frame.plot = FALSE, cex = 2, pch = 16, col = "#115f9a", cex.axis = 1.3, cex.lab = 1.5, xlim = c(0,70))
for(i in 1:6){ 
              lines(c(0,AGE[i]),c(CDI[i],CDI[i]), col = 'red')
              text(5, CDI[i], i, cex = 2, col = 'red')
              lines(c(AGE[i],AGE[i]),c(0,CDI[i]), col = 'blue')
              text(AGE[i], 5, i, cex = 2, col = 'blue')
}

# Plotted ranks
AgeRank = 1:6
CDIRank = 1:6
plot(AgeRank, CDIRank, frame.plot = FALSE, cex = 2, pch = 16, col = "#115f9a", cex.axis = 1.3, cex.lab = 1.5)
