set.seed(349587)
n = 100
x = runif(n, min = -3, max = 3)
y = x + rnorm(n, mean = 0, sd = 1)

dat = data.frame(x = x, y = y)

write.csv(dat, file = "../data/data.csv", 
          row.names = FALSE)