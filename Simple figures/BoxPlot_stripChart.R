# Box plot combined with strip chart
# Sometimes it can look really nice to combine a strip chart with a box plot
# Luckily that is very easy to do.
# In this case it is made more complicated by having individual colors for each 
# box, but it can easily be replaced by a single color instead.


# Generate data set for plotting ---- 
set.seed(52)
data1 <- rnorm(30, mean = 60, sd = 12) # generate data
data2 <- rnorm(30, mean = 60, sd = 12) # generate data
data1[29] <- 15 # make outlier
data2 <- c(data1,data2)
name <- rep(c('Data1','Data2'),c(30,30)) # make a list of 30 times "data1" and 30 times "data2"


# Plot the box plot ----
par(mai =  c(1, 1, 0.5, 0))
p <-boxplot(data2 ~ name,
            boxwex = 0.8, # box width
            notch = TRUE,
            frame = FALSE,
            col = c('#EEEEEE',"#1984c5"),    # box color for each individual box
            border = c('#BBBBBB',"#115f9a"), # border of box color for each individual box
            #main = '', # title 
            xlab = '',
            ylab = 'Filtered words score',
            ylim = c(0,100), # 
            xlim = c(0.5,2.5),
            horizontal = FALSE)

# plot the strip chart on top of the box plot ----
stripchart(data2 ~ name, 
          # subset = name=='Data1', # here I could select to only show part of the data as points
           vertical = TRUE, 
           method = "jitter",   # Jitter the symbols so they don't lie on top of each other 
           add = TRUE,          # this indicates that the plot should be added to the boxplot
           pch = 19)            # Symbol for the datapoints
