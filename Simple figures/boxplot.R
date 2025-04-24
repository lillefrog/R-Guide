# example of boxplot

# example using long format
data1 <- rnorm(30, mean = 60, sd = 12)   # generate data1 (will be random each time you run the code)
data2 <- rnorm(30, mean = 50, sd = 12)   # generate data2 (will be random each time you run the code)
data <- c(data1,data2)                   # combine the data into one long list
name <- rep(c('Data1','Data2'),c(30,30)) # make a list of 30 times "data" and 30 times "boxplot"


# Plot the box plot ----
# par(mai =  c(1, 1, 0.5, 0))
p <-boxplot(data ~ name,
            boxwex = 0.8,             # box width
            notch = TRUE,             # make a notch at the confidence intervals
            frame = FALSE,            # print the frame around the plot
            col = c('green', 'blue'), # box fill color (if there is only one color all the boxes will be the same)
            border = c('black', 'red'), # border of box color
            main = 'Fine headline', # title 
            xlab = '',              # xlable
            ylab = 'Filtered words score', # ylable
            ylim = c(0,100),        # range of the y axis (be careful with those, remove them if you have problems)
            xlim = c(0.5,3.8),      # range of the x axis (first group is 1 second is 2 and so on)
            horizontal = FALSE)     # plot the boxes horisontaly
