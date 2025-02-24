#---- Data clean up ----
install.packages("tidyverse")
library("tidyverse")

#---- Data tidying ----

plant <- read.csv("C:/Git repository/MTHTIM005-github-repository/data/plant list.csv")

leaf <- read.csv("C:/Git repository/MTHTIM005-github-repository/data/leaf traits.csv") %>% rename('species' = 'Species', 'speciman ID' = 'Number', 'average leaf length' = 'Av..leaf.length', 'average leaf width (cm)' = 'Av..leaf.width', 'average leaf thickness (mm)' = 'Av..leaf.thickness', 'single leaf surface area (cm2)' = 'Leaf.surface.area.per.leaf', 'fresh leaf weight (g)' = 'Leaf.fresh.weight', 'dry leaf weight (g)' = 'Leaf.dry.weight', 'specific leaf area (m2 g DW-1)' = 'Specific.leaf.area', 'leaf water content (%)' = 'Leaf.water.content') # Renaming columns to add add more informative names as well as units
%>% slice(-1) # Removing the unit row
%>% select (-X, -X.1, -X.2) # Removing empty columns


flamability <- read.csv("C:/Git repository/MTHTIM005-github-repository/data/flamability traits.csv") %>% rename('speciman ID' = 'Number', 'leaf ID' = 'Leaf.no.', 'fresh leaf ignibility (s)' = 'Fresh.leaves', 'fresh leaf sustainability (s)' = 'X', 'dry leaf ignibility (s)' = 'Dry.leaves', 'dry leaf sustainability (s)' = 'X.1') %>% slice(-1) %>% fill("speciman ID", .direction = "down") 

combustibility <- read.csv("C:/Git repository/MTHTIM005-github-repository/data/combustibility traits.csv") %>% rename ('speciman ID' = 'Number','combustibility (mg DW s-1)' = 'Combustibility')%>% slice(-1) 



