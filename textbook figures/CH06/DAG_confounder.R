# DAG showing confounder example ----

library(ggdag)
library(ggplot2)



png(file = "CH07_DAG_Confounder.png", units="in", width=7, height=4, res=300)
set.seed(2)
sunburn_DAG2 <- dagify(
  Sunburn ~ Sun,
  icecream ~ Sun,
  icecream ~ Sunburn,
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