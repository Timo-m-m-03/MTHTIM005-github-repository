#---- Data clean up ----
install.packages("tidyverse")
library("tidyverse")

#---- Data tidying ----

plant <- read.csv("C:/Git repository/MTHTIM005-github-repository/data/plant list.csv")
 

leaf <- read.csv("C:/Git repository/MTHTIM005-github-repository/data/leaf traits.csv")                                                                   %>% rename('species' = 'Species', 'speciman ID' = 'Number', 'average leaf length' = 'Av..leaf.length', 'average leaf width (cm)' = 'Av..leaf.width', 'average leaf thickness (mm)' = 'Av..leaf.thickness', 'single leaf surface area (cm2)' = 'Leaf.surface.area.per.leaf', 'fresh leaf weight (g)' = 'Leaf.fresh.weight', 'dry leaf weight (g)' = 'Leaf.dry.weight', 'specific leaf area (m2 g DW-1)' = 'Specific.leaf.area', 'leaf water content (%)' = 'Leaf.water.content') %>% slice(-1) %>% select (-X, -X.1, -X.2)                                      %>% mutate(`average leaf length` = as.character(`average leaf length`), `average leaf width (cm)` = as.character(`average leaf width (cm)`) ,         `average leaf thickness (mm)` = as.character(`average leaf thickness (mm)`),  `single leaf surface area (cm2)` = as.character(`single leaf surface area (cm2)`) ,`fresh leaf weight (g)` = as.character(`fresh leaf weight (g)`),         `dry leaf weight (g)` = as.character(`dry leaf weight (g)`),                   `specific leaf area (m2 g DW-1)` = as.character(`specific leaf area (m2 g DW-1)`), `leaf water content (%)` = as.character(`leaf water content (%)`))        %>% mutate(`average leaf length` = as.numeric(`average leaf length`),    `average leaf width (cm)` = as.numeric(`average leaf width (cm)`),       `average leaf width (cm)` = as.numeric(`average leaf width (cm)`),         `average leaf thickness (mm)` = as.numeric(`average leaf thickness (mm)`),  `single leaf surface area (cm2)` = as.numeric(`single leaf surface area (cm2)`) ,`fresh leaf weight (g)` = as.numeric(`fresh leaf weight (g)`),              `dry leaf weight (g)` = as.numeric(`dry leaf weight (g)`),                   `specific leaf area (m2 g DW-1)` = as.numeric(`specific leaf area (m2 g DW-1)`), `leaf water content (%)` = as.numeric(`leaf water content (%)`))  


flamability <- read.csv("C:/Git repository/MTHTIM005-github-repository/data/flamability traits.csv")                                                      %>% rename('speciman ID' = 'Number', 'leaf ID' = 'Leaf.no.', 'fresh leaf ignibility (s)' = 'Fresh.leaves', 'fresh leaf sustainability (s)' = 'X', 'dry leaf ignibility (s)' = 'Dry.leaves', 'dry leaf sustainability (s)' = 'X.1')    %>% slice(-1)                                                                  %>% fill("speciman ID", .direction = "down")                                   %>% mutate(`fresh leaf ignibility (s)` = as.character(`fresh leaf ignibility (s)`), `fresh leaf sustainability (s)` = as.character(`fresh leaf sustainability (s)`),`dry leaf ignibility (s)` = as.character(`dry leaf ignibility (s)`),    `dry leaf sustainability (s)` = as.character(`dry leaf sustainability (s)`))   %>% mutate(`fresh leaf ignibility (s)` = as.numeric(`fresh leaf ignibility (s)`), `fresh leaf sustainability (s)` = as.numeric(`fresh leaf sustainability (s)`),`dry leaf ignibility (s)` = as.numeric(`dry leaf ignibility (s)`),    `dry leaf sustainability (s)` = as.numeric(`dry leaf sustainability (s)`))


combustibility <- read.csv("C:/Git repository/MTHTIM005-github-repository/data/combustibility traits.csv")                                                   %>% rename ('speciman ID' = 'Number','combustibility (mg DW s-1)' = 'Combustibility')                                                              %>% slice(-1)                                                                  %>% mutate(`combustibility (mg DW s-1)` = as.character(`combustibility (mg DW s-1)`))                                                                         %>% mutate(`combustibility (mg DW s-1)` = as.numeric(`combustibility (mg DW s-1)`))
  
#---- Data exploration ----




