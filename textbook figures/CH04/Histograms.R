# Histogram different block size ----

#png(file = "04_Histogram_variants.png", units="in", width=7, height=3, res=300)
MyColores = c("#115f9a", "#1984c5", "#22a7f0", "#48b5c4", "#76c68f", "#a6d75b", "#c9e52f", "#d0ee11", "#d0f400")

set.seed(50) # 
x <- rnorm(15, mean=172, sd=15)
blocks <- seq(100, 220, by=10) # how do we split the data

par(mfrow=c(1,3)) # make 2x2 plots

blocks <- seq(100, 220, by=1) # how do we split the data
hist(x, breaks = blocks, 
     xlab="hight of students", 
     main="Bin width = 1",
     border = MyColores[1],
     col = MyColores[2])

blocks <- seq(100, 220, by=10) # how do we split the data
hist(x, breaks = blocks, 
     xlab="hight of students", 
     main="Bin width = 10",
     border = MyColores[1],
     col = MyColores[2])

blocks <- seq(100, 220, by=40) # how do we split the data
hist(x, breaks = blocks, 
     xlab="hight of students", 
     main="Bin width = 40",
     border = MyColores[1],
     col = MyColores[2])

#dev.off()
# ----

