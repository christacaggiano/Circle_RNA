#generates visualization for variants of RNA editing sites in Drosophila brain 

install.packages("ggplot2")

library(ggplot2)

rm(list=ls()) #removes all variables in R's memory 
setwd("/Users/christacaggiano/Documents/Rosbash Lab/circles")

variants = read.csv("output.csv", header = TRUE, sep = ",")

consequence = table(variants$Consequence)

c = as.data.frame(consequence)
names(c)[1] = "Type"

col.terrain = terrain.colors(12)

ggplot(data = c, aes(x=Type, y=Freq, fill=Type))+geom_bar(stat="identity")+theme_bw()+
  theme(axis.text.x=element_blank(), axis.ticks.x=element_blank(),
        legend.position="none", plot.title = element_text(hjust = 0.5))+
  labs(title="variant effect prediction for RNA editing sites in all brains")

