#install.packages('BlandAltmanLeh')
#install.packages('ggthemes')
library(BlandAltmanLeh)
library(ggplot2)
library(ggthemes)

FirstTest = c(10, 15, 10, 20, 5, 10, 30, 25, 10, 50, 0, 10, 10, 20, 25, 40)
LastTest = c(15, 20, 10, 15, 15, 10, 35, 20, 15, 40, 10, 15, 15, 25, 25, 40)

a <- bland.altman.plot(FirstTest, LastTest, graph.sys="ggplot2",main="Example plot", geom_count = TRUE)

print(a + 
        xlab("Mean score (dB)") + 
        ylab("difference (dB)") + 
        ggtitle("Blandt-Altman plot") + 
        theme_stata() +
        theme(legend.position = "right") + 
        scale_size_area()) # scale the size of dots correctly

#a$layers[[1]]$aes_params$colour <- "black"
#a$layers[[1]]$aes_params$shape <- 1
#a$layers[[1]]$aes_params$fill <- NA
#a

