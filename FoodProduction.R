# Load metrics library
library(Metrics)
library(ggplot2)

# Load the dataset
data <- read.csv("/Users/benorr/Documents/Food_Production.csv")
emissions <- data$Eutrophying.emissions.per.1000kcal..gPO.eq.per.1000kcal.
emissions = na.omit(emissions)
emissions = as.numeric(emissions)
print(emissions)



# Create a histogram
hist(emissions,
     main = "Eutrophying Emissions by Food Product",
     xlab = "Eutrophying Emissions",
     ylab = "Frequency",
     col = "lightblue",
     border = "black",
     xlim = c(0, max(emissions)),
     ylim = c(0, 100),
     breaks = seq(0, max(emissions), by = 10),
     labels = TRUE)
