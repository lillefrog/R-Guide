# classical demo of poisson distribution
# the number of Prussian soldiers accidentally killed by horse-kick
png(file = "02_possion_dist_demo.png", units="in", width=7, height=4, res=300)

set.seed(4)
x <- rpois(200, lambda=0.61)
hist(x, 
     breaks = 0:7-0.5,
     col = 'blue',                     # Color of bars
     border = 'white',                  # color of borders around bars
     main='Deaths by horse',
     ylab='Number of events',
     xlab ='Deaths pr year')     

dev.off() # enable this if you want to save a png file (first line also has to be active)
