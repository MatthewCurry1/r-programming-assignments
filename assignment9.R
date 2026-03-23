housePrices <- read.csv("HousePrices.csv")
head(housePrices)


plot(housePrices$lotsize, housePrices$price, 
     main = "House Price vs Lotsize",
     xlab = "Lotsize",
     ylab = "Price")
hist(housePrices$bedrooms,
     main = "Amount of Bedrooms",
     xlab = "Amount")


library(lattice)
xyplot(price ~ lotsize, data = housePrices, pch=".",
       main = "House Price vs Lotsize")
bwplot(~ bedrooms, data = housePrices,
       main = "Amount of Bedrooms")


library(ggplot2)
ggplot(housePrices, aes(lotsize, price)) +
  geom_point() +
  xlab("Lotsize") +
  ylab("Price")
ggplot(housePrices, aes(bedrooms)) +
  geom_histogram()
