# weak and strong correlations examples but now with
# order of variables reversed. This makes no difference to the correlation
# since it only debents on the relatinship of the variables


# set some global variables
G_cex <- 2.7 # symbol size
G_cexAxis <- 1.5 # axis text size
G_cexLab <- 1.7 # label text size
par(mfrow = c(2,2), mar = c(5,5,2,2)) # set figure layout and margins

# perfect correlation ---- 
benzin   <- c( 10,  15,  20,  25,  30,  35)
afstand  <- c(205, 295, 419, 495, 605, 710) 
plot(afstand, benzin,
     main = 'Perfect correlation',
     cex.main = 2,
     frame.plot = FALSE, 
     pch = 16, 
     col = "#115f9a",
     cex = G_cex, 
     cex.axis = G_cexAxis, 
     cex.lab = G_cexLab)


c1 <- cor(afstand, benzin, method = 'pearson')
lgnd <- bquote(italic(r) == .(format(c1, digits = 3)))
text(400, 25, as.expression(lgnd), cex = 2)


# Strong correlation ---- 
# driving in real traffic
benzin   <- c( 12,  15,  19,  25,  32,  35)
afstand  <- c(217, 395, 345, 510, 464, 610) 
plot(afstand, benzin, 
     main = 'Strong correlation',
     cex.main = 2,
     frame.plot = FALSE, 
     pch = 16, 
     col = "#115f9a",
     cex = G_cex, 
     cex.axis = G_cexAxis, 
     cex.lab = G_cexLab)

c1 <- cor(afstand, benzin, method = 'pearson')
lgnd <- bquote(italic(r) == .(format(c1, digits = 3)))
text(400, 25, as.expression(lgnd), cex = 2)


# Medium correlation ----
motivation   <- c( 12,  15,  19,  52,  72,  90)
score   <- c(22, 15, 55, 72, 45, 60) 
plot(score, motivation, 
     main = 'Medium correlation',
     cex.main = 2,
     frame.plot = FALSE, 
     pch = 16, 
     col = "#115f9a",
     cex = G_cex, 
     cex.axis = G_cexAxis, 
     cex.lab = G_cexLab)

c1 <- cor(score, motivation, method = 'pearson')
lgnd <- bquote(italic(r) == .(format(c1, digits = 3)))
text(30, 60, as.expression(lgnd), cex = 2)


# Weak correlation ----
RavenScore   <- c(20, 15, 32, 26, 27, 25)
score        <- c(52, 15, 35, 72, 45, 50) 
plot(score, RavenScore,  
     main = 'Weak correlation',
     cex.main = 2,
     frame.plot = FALSE, 
     pch = 16, 
     col = "#115f9a",
     cex = G_cex, 
     cex.axis = G_cexAxis, 
     cex.lab = G_cexLab)

c1 <- cor(score, RavenScore, method = 'pearson')
#lgnd <- bquote(italic(r)^2 == .(format(c1^2, digits = 3))~~/n italic(r)) # R squared
lgnd <- bquote(italic(r) == .(format(c1, digits = 3))) # R
text(30, 25, as.expression(lgnd), cex = 2)


