# 1) Load the necessary packages
library(ggplot2)
library(dplyr)

# 2) View the diamonds dataset
View(diamonds)

# 3) To obtain a summary of the dataset
glimpse(diamonds)
summary(diamonds)

# 4) To visualize the histogram of the price variable
ggplot(
  data = diamonds,
  mapping = aes(x = price),
) + 
  geom_histogram(bins = 20)

# 5) To visualize the histogram of the price variable for diamonds less than $5000
ggplot(
  data = diamonds %>% filter(price < 5000),
  mapping = aes(x = price),
) +
  geom_histogram(bins = 20)

# 6) Tp visualize a potential correlation between the x and y variables
ggplot(
  data = diamonds,
  aes(x = x, y = y),
) + geom_point()

# 7) Based on the observation that there are outliers in the x and the y variables,
# filter the dataset to improve the visualization
ggplot(
  data = diamonds %>% filter(x < 20 & x > 3 & y < 20),
  mapping = aes(x = x, y = y),
) + 
  geom_point()

# 8) Determine if there is a correlation between carat and price
# color the observation by clarity
ggplot(
  data = diamonds,
  mapping = aes(
    x = carat,
    y = price,
    color = clarity,
  ),
) + 
  geom_point() 

# 9) Add a single trendline to the previous plot -> Regression linear
ggplot(
  data = diamonds,
  mapping = aes(
    x = carat,
    y = price,
    color = clarity,
  ),
) + 
  geom_point() +
  geom_smooth(method = "lm")

# 10) Create a scatter plot of carat vs price for each clarity value
ggplot(
  data = diamonds,
  mapping = aes(x = carat, y = price),
) + 
  geom_point() +
  facet_grid(. ~ clarity)

# 11) Visualize the distribution of price by cut using a 'violin plot'
ggplot(
  data = diamonds,
  mapping = aes(x = cut, y = price),
) + 
  geom_violin()

# 12) Modify the previous plot by adding an aesthetic fill by cut and
# changing the number of bins, refer to question 5 with price < 5000
ggplot(
  data = diamonds %>% filter(price < 5000),
  mapping = aes(x = price, fill = cut),
) +
  geom_histogram(bins = 30) + 
  xlim(0, 5000)

# 13) Create a bar chart of the average price o diamonds by color
ggplot(
  data = diamonds,
  mapping = aes(x = color, y = price),
) + 
  stat_summary(fun = mean, geom = "bar")



