# plots a simple waffel chart, this is a good alternative to a pie chart
# install.packages("waffle")

# Use my default colors
MyColores = c("#115f9a", "#1984c5", "#22a7f0", "#48b5c4", "#76c68f", "#a6d75b", "#c9e52f", "#d0ee11", "#d0f400")

library(waffle)

# A simple data set
MyData <- c(50, 30, 15, 5)
names(MyData) <- c('Cheese', 'Beer', 'Tea', 'Ice') 

# Plot the figure
waffle(MyData, 
       rows = 5, 
       title = "What do people perfer?",
       xlab = '1 sq = 1000 people', # x Label
       size = 1,    # Gap between blocks
       flip = FALSE, # Flip the whole chart
       colors = MyColores[1:4]
       )
