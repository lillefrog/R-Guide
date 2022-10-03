# flat distribution 

# Load my preferred colors
MyColores = c("#115f9a", "#1984c5", "#22a7f0", "#48b5c4", "#76c68f", "#a6d75b", "#c9e52f", "#d0ee11", "#d0f400")

# when we set the seed we always get the same random numbers, good for figures in a book
set.seed(51) 

# draw 500 numbers from 1 to 6 with replacement (each number can be drawn more than once)
MySample <- sample(1:6, 500, replace=T)

# plot the result in a histogram
hist(MySample,
     breaks = 0.5:6.5, # we break up the data in groups 0ne wide and starting at 0.5 and ending at 6.5
     xlab="Number eyes on the dice",
     ylab="Number times it appeared",
     main="Simulation of 500 dice rolls",
     col = MyColores[2]) # use my default color number2