library(ISwR)

daily.intake <- c(5260, 5470, 5640, 6180, 6390, 6515, 6805, 7515, 7515, 8230, 8770)

mean(daily.intake)
sd(daily.intake)
quantile(daily.intake)

t.test(daily.intake, mu=7725)


wilcox.test(daily.intake, mu=7725)


attach(energy)

t.test(expend~stature)
