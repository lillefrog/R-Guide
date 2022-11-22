# Demo basis for the normal distribution

MyColors = c("#115f9a", "#1984c5", "#22a7f0", "#48b5c4", "#76c68f", "#a6d75b", "#c9e52f", "#d0ee11", "#d0f400")

N = 30
P = 0.5
x = 0:N
y = dbinom(x, size = N, prob = P)

barplot(y, names.arg = x, 
        ylab = 'Probablility',
        xlab = 'Number of heads',
        main = '30 coins',
        col = c(MyColors[2]), # box color
        border = c(MyColors[1]), # border of box color
        )

xx <- seq(from = 0, to = N, by = 0.1)
yy <- dnorm(xx, mean = N/2, sd = sqrt(N*P*(1 - P)))

lines(1.2*xx + 0.7,yy) # we need to do a bit of scaling because we use a boxplot
