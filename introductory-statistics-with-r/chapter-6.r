library(ISwR)

attach(thuesen)
options(na.action = na.exclude)
stuff <- lm(short.velocity~blood.glucose)

summary(stuff)

plot(blood.glucose, short.velocity)
abline(stuff)

fitted(stuff)

cc <- complete.cases(thuesen)
segments(blood.glucose, fitted(stuff), blood.glucose, short.velocity)

qqnorm(resid(stuff))

cor(blood.glucose, short.velocity, use = "complete.obs")
cor(thuesen, use="complete.obs")

cor.test(blood.glucose, short.velocity)
