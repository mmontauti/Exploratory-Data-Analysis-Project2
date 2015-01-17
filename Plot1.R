library(plyr)
library(ggplot2)

NEI <- readRDS("./datasets/summarySCC_PM25.rds")
SCC <- readRDS("./datasets/Source_Classification_Code.rds")

aggregate.data <- with(NEI, aggregate(Emissions, by = list(year), sum))


plot(aggregate.data, type = "o", ylab = expression("Total Emissions, PM"[2.5]), 
     xlab = "Year", main = "US Total Emissions")
polygon(aggregate.data, col = "blue", border = "black")