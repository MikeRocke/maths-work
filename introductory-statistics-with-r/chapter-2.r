c <- sample(1:40,5)

coinToss <- sample(c("head","tail"), 10, replace = T)

biasedCoin <- sample(c("head","tail"), 10, replace = T, prob=c(0.9,0.1))

prod(5:1)/prod(40:36)

1/choose(40,5)


x <- seq(-4,4,0.1)
plot(x, dnorm(x), type="l")

x <- 0:50
plot(x, dbinom(x, size=50, prob = 0.33), type="h")


xbar <- 83
sigma <- 12
n <- 5
sem <- sigma / sqrt(n)
sem

xbar + sem * qnorm(0.025)
xbar + sem * qnorm(0.975)

