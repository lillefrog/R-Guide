# exponential distribution 
MyColores = c("#115f9a", "#1984c5", "#22a7f0", "#48b5c4", "#76c68f", "#a6d75b", "#c9e52f", "#d0ee11", "#d0f400")


set.seed(51) # 
x <- rexp(10000, rate=0.00048)

blocks <- seq(0, 20000, by=1000) # how do we split the data

#hist(x)

hist(x, breaks = blocks,
     xlab="Number of views",
     ylab="Number of videos",
     main="Youtube videos",
     xlim = c(0,20000),
     ylim = c(0,4000),
     col = MyColores[2])


xx = x[x>10000]
hist(xx, breaks = blocks,
     xlab="Number of views",
     ylab="Number of videos",
     ylim = c(0,30),
     main="Youtube videos",
     col = MyColores[2])

# load youtube dataset ----

library(readr)
rawdata <- read_delim("~/doc1/OUH/E07 Videnskabsteori og Statestik/Datasets/Youtube Dataset/youtube_0305u.txt", 
                      delim = "\t", 
                      escape_double = FALSE, 
                      trim_ws = TRUE)


views = na.omit(rawData$VIEWS)

blocks <- seq(0, 20000, by=1000) # how do we split the data


viv2 = viv[viv<10000]
hist(viv2,
     xlab="Number of views",
     ylab="Number of videos",
     main="Youtube videos from 0 to 10,000 views",
     col = MyColores[2])

viv3 = viv[viv>10000 & viv<100000]
hist(viv3,
     xlab="Number of views (x1000)",
     ylab="Number of videos",
     main="Youtube videos from 10,000 to 100,000 views",
     xaxt='n',
     col = MyColores[2])
axis(side=1,at=seq(10000,100000,10000),labels=seq(10,100,10))

viv4 = viv[viv>100000 & viv<1000000]
hist(viv4,
     xlab="Number of views (x1000)",
     ylab="Number of videos",
     main="Youtube videos from 100,000 to 1000,000 views",
     xaxt='n',
     col = MyColores[2])
axis(side=1,at=seq(100000,1000000,100000),labels=seq(100,1000,100))


