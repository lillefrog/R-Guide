# plots a simple waffel chart, this is a good alternative to a pie chart, it requires 
# ggplot but it does not use grammar of graphics notation

# install.packages("waffle") # Install the library (should only be done once on a computer, takes some time)

library(waffle)   # use this library 

# A simple data set
MyData <- c(50, 30, 15, 5)                          # The data values
names(MyData) <- c('Cheese', 'Beer', 'Tea', 'Ice')  # add the names to the data

# Plot the figure
waffle(MyData,                            # Original data
       rows = 5,                          # Number of rows
       title = "What do people perfer?",  # main title
       xlab = '1 sq = 1000 people',       # x Label
       size = 1,                          # Gap between blocks
       flip = FALSE,                      # Flip the whole chart
       )
