# simple pie chart

# here I define a set of colors I like to use If you just want to use the default 
# colors you can remove the col = MyColoes line from the plot
MyColoes = c("#1984c5", "#22a7f0", "#48b5c4", "#76c68f", "#a6d75b", "#c9e52f", "#d0ee11")


# make some data
slices <- c(11747, 6194, 4289, 3675)               # size of each slice
navn <- c("Tea", "Chocolate", "clothes", "Shoes")  # name of each slice

# Simple Pie Chart
pie(slices, 
    labels = navn,     # name / lables of the slices
    col = MyColoes,    # set the colors of the slices, this line can be removed
    main="My budget for 2022", # main title of the plot
    cex = 1.1          # set the size of the text 1= normal
    )