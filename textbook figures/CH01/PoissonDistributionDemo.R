# classical demo of poisson distribution
# the number of Prussian soldiers accidentally killed by horse-kick

x <- rpois(200, lambda=0.61)
hist(x, 
     breaks = 0:7-0.5,
     col = 'blue',                     # Color of bars
     border = 'white',                  # color of borders around bars
     main='Events in ten army corps over 20 years',
     ylab='Number of events',
     xlab ='Deaths pr year')     
