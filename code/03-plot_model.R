library(ggplot2)
dat = read.csv(file = "../data/data.csv")
load(file = "../data/model.RData")

reg_intercept = reg$coefficients[1]
reg_slope = reg$coefficients[2]

gg = ggplot(data = dat, aes(x = x, y = y)) +
  geom_point(shape = 20, alpha = 0.7) +
  geom_abline(intercept = reg_intercept, 
              slope = reg_slope,
              color = "#4D8FEB") +
  theme_bw() +
  labs(title = "Simple regression model")

ggsave(filename = "../images/plot.png", 
       plot = gg, width = 5, height = 5)