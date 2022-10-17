# weak and strong correlations examples


G_cex <- 2.7
G_cexAxis <- 1.5
G_cexLab <- 1.7
par(mfrow=c(2,2), mar=c(5,5,2,2))

# perfect correlation ---- 
benzin   <- c( 10,  15,  20,  25,  30,  35)
afstand  <- c(205, 295, 419, 495, 605, 710) 
plot(benzin, afstand, 
     main = 'Perfect correlation',
     cex.main = 2,
     frame.plot = FALSE, 
     pch = 16, 
     col = "#115f9a",
     cex = G_cex, 
     cex.axis = G_cexAxis, 
     cex.lab = G_cexLab)


c1 <- cor(benzin, afstand, method = 'pearson')
lgnd <- bquote(italic(r) == .(format(c1, digits = 3)))
text(25,400, as.expression(lgnd), cex = 2)


# Strong correlation ---- 
# driving in real traffic
benzin   <- c( 12,  15,  19,  25,  32,  35)
afstand  <- c(217, 395, 345, 510, 464, 610) 
plot(benzin, afstand, 
     main = 'Strong correlation',
     cex.main = 2,
     frame.plot = FALSE, 
     pch = 16, 
     col = "#115f9a",
     cex = G_cex, 
     cex.axis = G_cexAxis, 
     cex.lab = G_cexLab)

c1 <- cor(benzin, afstand, method = 'pearson')
lgnd <- bquote(italic(r) == .(format(c1, digits = 3)))
text(25,400, as.expression(lgnd), cex = 2)


# Medium correlation ----
motivation   <- c( 12,  15,  19,  52,  72,  90)
score   <- c(22, 15, 55, 72, 45, 60) 
plot(motivation, score, 
     main = 'Medium correlation',
     cex.main = 2,
     frame.plot = FALSE, 
     pch = 16, 
     col = "#115f9a",
     cex = G_cex, 
     cex.axis = G_cexAxis, 
     cex.lab = G_cexLab)

c1 <- cor(motivation, score, method = 'pearson')
lgnd <- bquote(italic(r) == .(format(c1, digits = 3)))
text(60,30, as.expression(lgnd), cex = 2)


# Weak correlation ----
RavenScore   <- c(20, 15, 32, 26, 27, 25)
score        <- c(52, 15, 35, 72, 45, 50) 
plot(RavenScore, score, 
     main = 'Weak correlation',
     cex.main = 2,
     frame.plot = FALSE, 
     pch = 16, 
     col = "#115f9a",
     cex = G_cex, 
     cex.axis = G_cexAxis, 
     cex.lab = G_cexLab)

c1 <- cor(RavenScore, score, method = 'pearson')
#lgnd <- bquote(italic(r)^2 == .(format(c1^2, digits = 3))~~/n italic(r)) # R squared
lgnd <- bquote(italic(r) == .(format(c1, digits = 3))) # R
text(25,30, as.expression(lgnd), cex = 2)


