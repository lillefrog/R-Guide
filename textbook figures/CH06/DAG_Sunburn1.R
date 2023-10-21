# DAG showing Sunburn example ----

library(ggdag)
library(ggplot2)

png(file = "F06_DAG_sunburn1.png", units="in", width=6, height=4, res=300)
set.seed(25)
sunburn_DAG1 <- dagify(
  icecream ~ Sunburn,
  exposure = "Sunburn",
  outcome = "icecream",
  coords = list(x = c(Sunburn = 1, icecream = 2),
                y = c(Sunburn = 1, icecream = 1)),
  labels = c(
    "Sunburn" = "Sunburn",
    "icecream" = "Icecream"
  )
)

ggdag_status(sunburn_DAG1, 
             use_labels = "label", 
             text = FALSE, padding = 10)  + 
  guides(color = FALSE) + 
  theme_dag()
dev.off()




# version 2 ----

png(file = "F06_DAG_sunburn2.png", units="in", width=7, height=4, res=300)
set.seed(2)
sunburn_DAG2 <- dagify(
  Sunburn ~ Sun,
  icecream ~ Sun,
  exposure = "Sun",
  outcome = c("icecream", "Sunburn"),
  coords = list(x = c(Sun = 1.5, Sunburn = 1, icecream = 2),
                y = c(Sun = 1.5, Sunburn = 1, icecream = 1)),
  labels = c(
    "Sun" = "Sun",
    "Sunburn" = "Sunburn",
    "icecream" = "Icecream"
  )
)

ggdag_status(sunburn_DAG2, 
             use_labels = "label", 
             text = FALSE, padding = 10)  + 
  guides(color = FALSE) + 
  theme_dag()

dev.off()
