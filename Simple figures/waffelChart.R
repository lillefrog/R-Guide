# plots a simple waffel chart, this is a good alternative to a pie chart, it requires 
# ggplot but it does not use grammar of graphics notation
# install.packages("waffle")

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
       )
