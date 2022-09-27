# Kruskal-Wallis Demo

# install.packages("palmerpenguins")
# install.packages("FSA")
library(palmerpenguins)

penguinData <- penguins[, c("species", "flipper_length_mm")] # make a new dataset with only species and flipper length

summary(penguinData)

boxplot(flipper_length_mm ~ species ,data = penguinData)

kruskal.test(flipper_length_mm ~ species,
             data = penguinData)

# If we want to see what groups are different from the others we have to make 
# a post-hoc test.This only makes sense if we already got a significant result
# in the Kruskal-Wallis tests.

# The Dunn test is th most common post-hoc test when doing Kruskal-Wallis. But we
# need a seperate library for that

library(FSA)

dunnTest(flipper_length_mm ~ species,
         data = penguinData,
         method = "holm"
)

# notice that you should use the adjusted p values (p.adj) to avoid problems 
# with multiple tests