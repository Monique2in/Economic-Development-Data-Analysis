## This script constructs a table to include data about
## Official Development Assistance received per capita in 2012
## and Human Development Index in 2013, to allow for further future analysis

## Read in file of ODA data
data <- read.csv("ODA Data.csv")

## Select columns with Country Name and 2012 Data only
oda <- data.frame(data$Country.Name, data$X2012)
names(data2) <- c("Country", "ODA Received per capita in 2012")

## Read in file of HDI data
hdi <- read.csv("HDI Data.csv")

## Merge two tables by country name
merged <- merge(hdi, data2)

## Order countries by amount of ODA per capita received
order <- merged[order(merged$"ODA Received per capita in 2012"),]

## Remove countries which did not receive ODA in 2012 or for which data is unavailable
data3 <- order[!is.na(order$"ODA Received per capita in 2012"), ]
names(data3) <- c("Country", "HDI Rank 2013", "HDI Value 2013", "ODA per capita 2012")

## Write table to text file
write.table(data3, "ODA vs HDI", row.names=FALSE) ## Write to file
