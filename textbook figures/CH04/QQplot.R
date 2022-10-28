# Q-Q plot demo
# 
library(confintr)

set.seed(51)

par(mfrow = c(3,3))

data <- rnorm(20, mean = 170, sd = 10)
qqnorm(data, main = 'Normal distribution N=20', cex = 1.5, pch = 16, col = "#115f9a")
qqline(data, col = 2)

data <- rnorm(40, mean = 170, sd = 10)
qqnorm(data, main = 'Normal distribution N=40', cex = 1.5, pch = 16, col = "#115f9a")
qqline(data, col = 2)

data <- rnorm(100, mean = 170, sd = 10)
qqnorm(data, main = 'Normal distribution N=100', cex = 1.5, pch = 16, col = "#115f9a")
qqline(data, col = 2)


## right screwed data ----
data2 <- rchisq(20, df = 2)
qqnorm(data2, main = 'Right skewed N=20', cex = 1.5, pch = 16, col = "#115f9a")
qqline(data2, col = 2)

# right screwed data
data2 <- rchisq(40, df = 2)
qqnorm(data2, main = 'Right skewed N=40', cex = 1.5, pch = 16, col = "#115f9a")
qqline(data2, col = 2)

# right screwed data
data2 <- rchisq(100, df = 2)
qqnorm(data2, main = 'Right skewed N=100', cex = 1.5, pch = 16, col = "#115f9a")
qqline(data2, col = 2)


## 
data3 <- rbeta(100, 5, 1)
qqnorm(data3, main = 'Left skewed N=100', cex = 1.5, pch = 16, col = "#115f9a")
qqline(data3, col = 2)

data3 <- rcauchy(200, location = -10)
qqnorm(data3, main = 'Leptokurtic N=100', cex = 1.5, pch = 16, col = "#115f9a")
qqline(data3, col = 2)
kurtosis(data3) - 3

data3 <- rbeta(100, 1, 1)
qqnorm(data3, main = 'Platykurtic N=100', cex = 1.5, pch = 16, col = "#115f9a")
qqline(data3, col = 2)
kurtosis(data3) - 3


## examples 

# # right screwed data
# data2 <- rchisq(100, df = 2)
# qqnorm(data2, main = 'Right skewed data', cex = 1.5, pch = 16, col = "#115f9a")
# qqline(data2, col = 2)
# 
# data <- rnorm(100, mean = 170, sd = 10)
# qqnorm(data, main = 'Q-Q plot', cex = 1.5, pch = 16, col = "#115f9a")
# qqline(data, col = 2)
# 
# histData <- hist(data, col = "#115f9a")
# 
# barplot(histData$counts, 
#         axes = TRUE, 
#         names.arg = round(histData$mids), 
#         space = 0, 
#         horiz = TRUE, 
#         col = "#115f9a",
#         xlab = "Counts", 
#         ylab = "Bins")
