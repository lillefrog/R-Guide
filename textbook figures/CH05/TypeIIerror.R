# Plot figure for type one an two errors 

x1 <- seq(-4, 10, length=100)

y1 <- dnorm(x1, mean = 0)
y2 <- dnorm(x1, mean = 2)
y3 <- dnorm(x1, mean = 4)
y4 <- dnorm(x1, mean = 6)

plot(x1,y1, 
     type = 'l', 
     xlab = 'Effect of treatment',
     ylab = '', 
     frame.plot = FALSE, 
     col = 'red', 
     lwd = 4)

lines(c(-4,-2,-2),c(0,0,0.054), col = 'red', lwd = 2)
lines(c( 4, 2, 2),c(0,0,0.054), col = 'red', lwd = 2)

lines(x1,y2, lwd = 2, col = 'blue')
lines(x1,y3, lwd = 2, col = 'green')
lines(x1,y4, lwd = 2, col = 'orange')