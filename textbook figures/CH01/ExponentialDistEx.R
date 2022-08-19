# exponential distribution 

set.seed(50) # 
x <- rnorm(15, mean=172, sd=15)
blocks <- seq(100, 220, by=10) # how do we split the data

par(mfrow=c(1,3)) # make 2x2 plots

blocks <- seq(100, 220, by=1) # how do we split the data
hist(x, breaks = blocks, 
     xlab="hight of students", 
     main="Bin width = 1",
     border = MyColoes[1],
     col = MyColoes[2])