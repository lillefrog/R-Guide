# figure illustrating Mode

# My default color scheme
MyColoes = c("#115f9a", "#1984c5", "#22a7f0", "#48b5c4", "#76c68f", "#a6d75b", "#c9e52f", "#d0ee11", "#d0f400")

# Generate bimodal data
set.seed(50) # 
x1 <- rnorm(1000, mean=12, sd=1.5) # first mode
x2 <- rnorm(1000, mean=17, sd=1.5) # second mode
x <- c(x1,x2)

# Plot a histogram of the data
blocks <- seq(0, 24, by=1) # how do we split the data
hist(x, breaks = blocks, 
     xlab="Time of day",
     ylab = "Number of visitors",
     main="Johnny's food joint",
     xlim = c(8, 22),
     border = MyColoes[1],
     col = MyColoes[2])


# The mode of this data set is 12 while the mean and median is 14.5 