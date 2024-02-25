

# plot normal distribution with lines for 68-95-99.7 rule ----
x <- seq(0, 16, by = .01)
y <- dnorm(x, mean = 8, sd = 2.0)

#png(file = "01_NormalDistribution.png", units="in", width=7, height=4, res=150)

par(xpd=TRUE) # this seems to let you draw outside the main plot
plot(x,y,'l', xlab="Weight of strawberry", ylab="Number of strawberrys", ylim = c(0, 0.4), frame.plot = FALSE, lwd = 1.5)
lines(c(8, 8),c(0, 0.22), col = "red", lty = "dashed")
text(8,0.24,'mean',col = "red")

lines(c(2, 2),c(0, 0.18),col = "blue", lty = "dashed")
lines(c(4, 4),c(0, 0.18),col = "blue", lty = "dashed")
lines(c(6, 6),c(0, 0.18),col = "blue", lty = "dashed")
lines(c(10, 10),c(0, 0.18),col = "blue", lty = "dashed")
lines(c(12, 12),c(0, 0.18),col = "blue", lty = "dashed")
lines(c(14, 14),c(0, 0.18),col = "blue", lty = "dashed")

text(2,0.2,'-3SD',col = "blue")
text(4,0.2,'-2SD',col = "blue")
text(6,0.2,'-1SD',col = "blue")
text(10,0.2,'+1SD',col = "blue")
text(12,0.2,'+2SD',col = "blue")
text(14,0.2,'+3SD',col = "blue")

lines(c(6, 10),c(0.32, 0.32),col = "black", lwd = 1.1)
lines(c(4, 12),c(0.40, 0.40),col = "black", lwd = 1.1)
lines(c(2, 14),c(0.48, 0.48),col = "black", lwd = 1.1)
text(8,0.34,'68% of data',col = "red")
text(8,0.42,'95% of data',col = "red")
text(8,0.50,'99.7% of data',col = "red")

lines(c(2, 2),c(0.22, 0.48),col = "blue", lty = "dashed")
lines(c(4, 4),c(0.22, 0.40),col = "blue", lty = "dashed")
lines(c(6, 6),c(0.22, 0.32),col = "blue", lty = "dashed")
lines(c(10, 10),c(0.22, 0.32),col = "blue", lty = "dashed")
lines(c(12, 12),c(0.22, 0.40),col = "blue", lty = "dashed")
lines(c(14, 14),c(0.22, 0.48),col = "blue", lty = "dashed")

#dev.off()