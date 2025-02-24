#---- Data clean up ----
install.packages("tidyverse")
library("tidyverse")

#---- Data tidying ----

plant <- read.csv("C:/Git repository/MTHTIM005-github-repository/data/plant list.csv")
 


leaf <- read.csv("C:/Git repository/MTHTIM005-github-repository/data/leaf traits.csv")                                                                   %>% rename('species' = 'Species', 'speciman ID' = 'Number', 'average leaf length (cm)' = 'Av..leaf.length', 'average leaf width (cm)' = 'Av..leaf.width', 'average leaf thickness (mm)' = 'Av..leaf.thickness', 'single leaf surface area (cm2)' = 'Leaf.surface.area.per.leaf', 'fresh leaf weight (g)' = 'Leaf.fresh.weight', 'dry leaf weight (g)' = 'Leaf.dry.weight', 'specific leaf area (m2 g DW-1)' = 'Specific.leaf.area', 'leaf water content (%)' = 'Leaf.water.content') %>% slice(-1) %>% select (-X, -X.1, -X.2)                                      %>% mutate(`average leaf length` = as.character(`average leaf length`), `average leaf width (cm)` = as.character(`average leaf width (cm)`) ,         `average leaf thickness (mm)` = as.character(`average leaf thickness (mm)`),  `single leaf surface area (cm2)` = as.character(`single leaf surface area (cm2)`) ,`fresh leaf weight (g)` = as.character(`fresh leaf weight (g)`),         `dry leaf weight (g)` = as.character(`dry leaf weight (g)`),                   `specific leaf area (m2 g DW-1)` = as.character(`specific leaf area (m2 g DW-1)`), `leaf water content (%)` = as.character(`leaf water content (%)`))        %>% mutate(`average leaf length` = as.numeric(`average leaf length`),    `average leaf width (cm)` = as.numeric(`average leaf width (cm)`),       `average leaf width (cm)` = as.numeric(`average leaf width (cm)`),         `average leaf thickness (mm)` = as.numeric(`average leaf thickness (mm)`),  `single leaf surface area (cm2)` = as.numeric(`single leaf surface area (cm2)`) ,`fresh leaf weight (g)` = as.numeric(`fresh leaf weight (g)`),              `dry leaf weight (g)` = as.numeric(`dry leaf weight (g)`),                   `specific leaf area (m2 g DW-1)` = as.numeric(`specific leaf area (m2 g DW-1)`), `leaf water content (%)` = as.numeric(`leaf water content (%)`))            %>% mutate(`species` = as.factor(`species`))

 

flammability <- read.csv("C:/Git repository/MTHTIM005-github-repository/data/flamability traits.csv")                                                      %>% rename('species' = 'Species','speciman ID' = 'Number', 'leaf ID' = 'Leaf.no.', 'fresh leaf ignitability (s)' = 'Fresh.leaves', 'fresh leaf sustainability (s)' = 'X', 'dry leaf ignitability (s)' = 'Dry.leaves', 'dry leaf sustainability (s)' = 'X.1')                                                   %>% slice(-1)                                                                  %>% fill("speciman ID", .direction = "down")                                   %>% mutate(`fresh leaf ignitability (s)` = as.character(`fresh leaf ignitability (s)`), `fresh leaf sustainability (s)` = as.character(`fresh leaf sustainability (s)`),`dry leaf ignitability (s)` = as.character(`dry leaf ignitability (s)`),`dry leaf sustainability (s)` = as.character(`dry leaf sustainability (s)`))                                                          %>% mutate(`fresh leaf ignitability (s)` = as.numeric(`fresh leaf ignitability (s)`), `fresh leaf sustainability (s)` = as.numeric(`fresh leaf sustainability (s)`),`dry leaf ignitability (s)` = as.numeric(`dry leaf ignitability (s)`),`dry leaf sustainability (s)` = as.numeric(`dry leaf sustainability (s)`))                                                          %>% mutate(`species` = as.factor(`species`))



combustibility <- read.csv("C:/Git repository/MTHTIM005-github-repository/data/combustibility traits.csv")                                                   %>% rename ('species' = 'Species','speciman ID' = 'Number','combustibility (mg DW s-1)' = 'Combustibility')                                                   %>% slice(-1)                                                                  %>% mutate(`combustibility (mg DW s-1)` = as.character(`combustibility (mg DW s-1)`))                                                                         %>% mutate(`combustibility (mg DW s-1)` = as.numeric(`combustibility (mg DW s-1)`))                                                                           %>% mutate(`species` = as.factor(`species`))
  
#---- Data exploration ----

#Leaf traits data exploration

pairs(leaf[,-1:-2]) # Scatter plot matrix  of leaf traits

ggplot(data = leaf, aes(x = species, y = `average leaf length`)) + geom_boxplot() + labs(title = "Box Plot of Average Leaf Length by Species",x = "Species", y = "Average Leaf Length (cm)") + theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) # Average leaf length by species

ggplot(data = leaf, aes(x = species, y = `average leaf width (cm)`)) + geom_boxplot() + labs(title = "Box Plot of Average Leaf Width by Species",x = "Species", y = "Average Leaf Width (cm)") + theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) # Average leaf width by species

ggplot(data = leaf, aes(x = species, y = `average leaf thickness (mm)`)) + geom_boxplot() + labs(title = "Box Plot of Average Leaf Thickness by Species",x = "Species", y = "Average Leaf Thickness (mm)") + theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) # Average leaf thickness by species

ggplot(data = leaf, aes(x = species, y = `single leaf surface area (cm2)`)) + geom_boxplot() + labs(title = "Box Plot of Single Leaf Surface Area by Species",x = "Species", y = "Single Leaf Surface Area (cm2) (mm)") + theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) # Single leaf surface area (cm2)Average leaf thickness by species

ggplot(data = leaf, aes(x = species, y = `fresh leaf weight (g)`)) + geom_boxplot() + labs(title = "Box Plot of Fresh Leaf Weight by Species",x = "Species", y = "Fresh Leaf Weight (g)") + theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) # Fresh leaf weight by species

ggplot(data = leaf, aes(x = species, y = `dry leaf weight (g)`)) + geom_boxplot() + labs(title = "Box Plot of Dry Leaf Weight by Species",x = "Species", y = "Dry Leaf Weight (g)") + theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) # Dry leaf weight by species

ggplot(data = leaf, aes(x = species, y = `specific leaf area (m2 g DW-1)`)) + geom_boxplot() + labs(title = "Box Plot of Specific Leaf Area by Species",x = "Species", y = "Specific Leaf Area (m2 g DW-1)") + theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) # Specific leaf area by species

ggplot(data = leaf, aes(x = species, y = `leaf water content (%)`)) + geom_boxplot() + labs(title = "Box Plot of Leaf Water Content by Species",x = "Species", y = "Leaf Water Content (%)") + theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) # Leaf water content by species

# Flammability traits data exploration

pairs(flammability[,-1:-3]) # Scatter plot matrix of flammability traits

ggplot(data = flammability, aes(x = species, y = `fresh leaf ignitability (s)`)) + geom_boxplot() + labs(title = "Box Plot of Fresh leaf ignitability by Species",x = "Species", y = "fresh leaf ignitability (s)") + theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) # Fresh leaf ignitability by species

ggplot(data = flammability, aes(x = species, y = `fresh leaf sustainability (s)`)) + geom_boxplot() + labs(title = "Box Plot of Fresh leaf stastainability by Species",x = "Species", y = "fresh leaf sustainability (s)") + theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) # Fresh leaf sustainability by species

ggplot(data = flammability, aes(x = species, y = `dry leaf ignitability (s)`)) + geom_boxplot() + labs(title = "Box Plot of Dry leaf ignbility by Species",x = "Species", y = "dry leaf ignitability (s)") + theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) # dry leaf ignitability by species

ggplot(data = flammability, aes(x = species, y = `dry leaf sustainability (s)`)) + geom_boxplot() + labs(title = "Box Plot of Dry leaf stastainability by Species",x = "Species", y = "dry leaf sustainability (s)") + theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) # Fresh leaf sustainability by species

#Combustibility

ggplot(data = combustibility, aes(x = species, y = `combustibility (mg DW s-1)`)) + geom_boxplot() + labs(title = "Box Plot of Combustibility by Species",x = "Species", y = "combustibility (mg DW s-1)") + theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) # Combustibility by species

names(combustibility)



