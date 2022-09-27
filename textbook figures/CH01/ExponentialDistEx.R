# exponential distribution 

# Load my preferred colors
MyColores = c("#115f9a", "#1984c5", "#22a7f0", "#48b5c4", "#76c68f", "#a6d75b", "#c9e52f", "#d0ee11", "#d0f400")

# use the readr libary to read data from a text file that contains data from youtube
library(readr)
rawData <- read_delim("textbook figures/datasets/Youtube Dataset/youtube_0305u.txt", 
                      delim = "\t", 
                      escape_double = FALSE, 
                      trim_ws = TRUE)

# extract the number of views for all videos
views <- na.omit(rawData$VIEWS)

# Set the margins and that we want to combine figures in 1 column and 3 rows 
par(mar=c(5,5,5,2), mfrow=c(1,3))

# plot videos with less than 10,000 views in the first figure
viv2 = views[views<10000]
hist(viv2,
     xlab="Number of views",
     ylab="Number of videos",
     main="from 0 to 10,000 views",
     col = MyColores[2]) # use my default color number2

# plot videos with 10,000 to 100,000 views in the second figure
viv3 = views[views>10000 & views<100000]
hist(viv3,
     xlab="Number of views (x1000)",
     ylab="Number of videos",
     main="from 10,000 to 100,000 views",
     xaxt='n', # remove the original x-axis
     col = MyColores[2])
# Because we want the axis to show numbers divided with 1000 we have to define our own axis
axis(side=1,at=seq(10000,100000,10000),labels=seq(10,100,10)) 

# plot videos with 100,000 to 1,000,000 views in the third figure
viv4 = views[views>100000 & views<1000000]
hist(viv4,
     xlab="Number of views (x1000)",
     ylab="Number of videos",
     main="from 100,000 to 1,000,000 views",
     xaxt='n', # remove the original x-axis
     col = MyColores[2])
# Because we want the axis to show numbers divided with 1000 we have to define our own axis
axis(side=1,  # side 1 is the x-axis
     at=seq(100000,1000000,100000), # at is where the text should be placed
     labels=seq(100,1000,100)
     )

