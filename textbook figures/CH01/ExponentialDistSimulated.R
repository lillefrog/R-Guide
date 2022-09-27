# Simulated exponential distribution

# Load my preferred colors
MyColores = c("#115f9a", "#1984c5", "#22a7f0", "#48b5c4", "#76c68f", "#a6d75b", "#c9e52f", "#d0ee11", "#d0f400")

set.seed(51) # 
x <- rexp(10000, rate=0.00048)

blocks <- seq(0, 20000, by=1000) # how do we split the data


hist(x, breaks = blocks,
     xlab="Number of views",
     ylab="Number of videos",
     main="Youtube videos",
     xlim = c(0,20000),
     ylim = c(0,4000),
     col = MyColores[2])