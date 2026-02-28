 library(ISwR)

## plot(rnorm(1000))

weight <- c(60, 72, 57, 90, 95, 72)
## weight

height <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)

bmi <- weight/height^2
## bmi

xbar <- sum(weight)/length(weight)
## xbar
xbar <- mean(xbar)

sig <- sd(weight)

(weight-xbar)/sig

attach(juul)

juul.girl = juul[juul$age > 7 & juul$age < 14 & juul$sex == 2,]
summary(juul.girl)
