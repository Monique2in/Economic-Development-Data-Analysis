## Calculations on ODA vs HDI Data
## setwd("/Users/Monique/Documents/Programming/Economic-Development-Data-Analysis/HDI and ODA Analysis")

## Calculating correlation between ODA in 2012, and HDI in 2013.
table <- read.table("ODA vs HDI", header=TRUE)
head(data)
df <- data.frame(table)
cor(df[3], df[4], use="complete.obs")

## Plotting ODA per capita in 2012 versus HDI in 2013; Add linear regression line
jpeg("exploratorygraph.jpeg")
plot(table$ODA.per.capita.2012, table$HDI.Value.2013, xlim=c(0, 900))
abline(lm(table$HDI.Value.2013 ~ table$ODA.per.capita.2012))
dev.off()