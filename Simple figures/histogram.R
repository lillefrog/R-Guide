# histogram demo

# generate a dataset with random data
data1 <- rnorm(30,           # size of the datset
               mean = 60,    # Mean of the dataset
               sd = 12       # standard deviation of the dataset
               )   

# Make a very simple histogram
hist(data1)  # plot everything with automatic settings


# Make a more advanced histogram
hist(data1,
     breaks = c(3:9*10),               # split it up in groups between 30 and 90 stepsize 10 
     col = 'pink',                     # Color of bars
     border = 'blue',                  # color of borders around bars
     main = 'Histogram Demo',          # Main title
     xlab = 'Score',                   # X title / label 
     ylab = 'number of observations'   # Y title / label
     )
