# DAG showing collider example ----

library(ggdag)
library(ggplot2)

#png(file = "F06_DAG_sunburn1.png", units="in", width=6, height=4, res=300)
set.seed(25)
sunburn_DAG1 <- dagify(
  lungCancer ~ smoker,
  antidepres ~ depression,
  CA ~ depression + smoker,
  exposure = c("smoker","depression"),
  outcome = c("lungCancer","antidepres"),
  
  coords = list(x = c(lungCancer = 3, antidepres = 1, CA = 2, smoker = 3, depression = 1),
                y = c(lungCancer = 1, antidepres = 1, CA = 2, smoker = 3, depression = 3)),
  
  labels = c(
    "lungCancer" = "lung Cancer",
    "smoker" = "smoker",
    "antidepres" = "antidepressant use",
    "CA" = "Coronary artery disease",  
    "depression" = "depression"
  )
)

ggdag_status(sunburn_DAG1, 
             use_labels = "label",
             text = FALSE, padding = 10)  + 
  guides(color = FALSE) + 
  theme_dag()
#dev.off()
