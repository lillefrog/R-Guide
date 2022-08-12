# Pie Charts ----

par(mfrow=c(2,2), mar=c(2,2,2,2))
MyColoes = c("#1984c5", "#22a7f0", "#48b5c4", "#76c68f", "#a6d75b", "#c9e52f", "#d0ee11")
MyColoes2 = c("#115f9a", "#1984c5", "#22a7f0", "#48b5c4", "#76c68f", "#a6d75b", "#c9e52f", "#d0ee11", "#d0f400")

# Simple Pie Chart
slices <- c(11747, 6194, 4289, 3675)
lbls <- c("Tea", "Chocolate", "clothes", "Shoes")
pie(slices, labels = lbls, col = MyColoes, main="My budget for 2022", cex = 1.1)

# Simple Pie Chart
slices2 <- c(80000, 11747, 6194, 4289, 3675)
lbls2 <- c("Rent","Tea", "Chocolate", "clothes", "Shoes")
pie(slices2, labels = lbls2,col = MyColoes2, main="My full budget for 2022", cex = 1.1)


library(plotrix)
pie3D(slices, labels=lbls, 
      col = MyColoes,
      explode=0.1,
      main="My budget for 2022",
      theta = 1,
      mar = c(3,3,3,3),
      labelcex = 1.0)

par(mar = c(4,4,4,4))
# simple bar plot to compare with first pie chart
barplot(slices, names.arg = lbls, 
        col = MyColoes,
        cex.names = 1.1,
        main = "My budget for 2022", 
        ylab = "Expence (DKK)")
