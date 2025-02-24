#---- Data clean up ----
install.packages("tidyverse")
library("tidyverse")

#---- Data tidying ----

plant.list <- read.csv("C:/Git repository/MTHTIM005-github-repository/data/plant list.csv")

leaf <- read.csv("data/leaf traits.csv")
plant.list <- read.csv("C:/Git repository/MTHTIM005-github-repository/data/plant list.csv