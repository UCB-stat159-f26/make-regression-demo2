dat = read.csv(file = "../data/data.csv")

reg = lm(y ~ x, data = dat)

save(reg, file = "../data/model.RData")