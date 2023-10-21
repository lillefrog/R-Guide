#install.packages("ggdag", dependencies = TRUE)
library(ggdag)
library(ggplot2)

theme_set(theme_dag())

smoking_ca_dag <- dagify(cardiacarrest ~ cholesterol,
                         cholesterol ~ smoking + weight,
                         smoking ~ unhealthy,
                         weight ~ unhealthy,
                         labels = c(
                           "cardiacarrest" = "Cardiac\n Arrest",
                           "smoking" = "Smoking",
                           "cholesterol" = "Cholesterol",
                           "unhealthy" = "Unhealthy\n Lifestyle",
                           "weight" = "Weight"
                         ),
                         latent = "unhealthy",
                         exposure = "smoking",
                         outcome = "cardiacarrest"
)

ggdag(smoking_ca_dag, text = FALSE, use_labels = "label")

ggdag_paths(smoking_ca_dag, text = FALSE, use_labels = "label", shadow = FALSE)

ggdag_adjustment_set(smoking_ca_dag, text = FALSE, use_labels = "label", shadow = TRUE)

ggdag(smoking_ca_dag, text = FALSE, use_labels = "label")
ggdag(smoking_ca_dag, text = FALSE, use_labels = "label", layout = "circle")
ggdag(smoking_ca_dag, text = FALSE, use_labels = "label", layout = "star")

# LAyout options
# ?layout_tbl_graph_igraph
# bipartite, star, circle, nicely, dh, gem, graphopt, grid, mds, randomly


# COLLIDER ----


fever_dag <- collider_triangle(
  x = "Influenza",
  y = "Chicken Pox",
  m = "Fever"
)

ggdag(fever_dag, text = FALSE, use_labels = "label")
  

ggdag_dseparated(fever_dag, text = FALSE, use_labels = "label")

ggdag_dseparated(fever_dag,
                 controlling_for = "m",
                 text = FALSE, use_labels = "label"
)

ggdag(fever_dag, layout = "nicely", use_labels = "label")
ggdag(fever_dag, layout = "circle", use_labels = "label")

# define coordinates manually ----
# https://evalf20.classes.andrewheiss.com/example/dags/#layouts-and-manual-coordinates

simple_dag_with_coords <- dagify(
  y ~ x + a + b,
  x ~ a + b,
  exposure = "x",
  outcome = "y",
  coords = list(x = c(x = 1, a = 2, b = 2, y = 3),
                y = c(x = 2, a = 1, b = 3, y = 2))
)

ggdag_status(simple_dag_with_coords) + 
  theme_dag()

