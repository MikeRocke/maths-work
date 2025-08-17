#exercise3.1 a)
#standard normal distribution variable greater than 3
#mean = 0, stddev = 1
data <- pnorm(-20:20, mean=0, sd=1)
1-pnorm(3, mean=0, sd=1)

#3.1 b)
#normal distribution, mean of 35 and sd of 6, probability of larger than 42
1-pnorm(42, mean=35, sd=6)

#3.1 c)
# getting 10 out of 10 successes in binomial distribution with probability 0.8
dbinom(10, 10, 0.8)
#or
0.8^10

#3.1 d)
#X < 0.9 when x ahdn standard distribution, strictly less than 0.9
0.9 #as its a uniform distribution, e.g. constant, straight line

#3.1 e)
#X > 6.5 in chi-squared distribution
1-pchisq(6.5, df=2)

#3.2 
#A rule of thumb is that 5% of the normal distribution lies outside an
#interval approximately ±2s about the mean. To what extent is this true?
qnorm(0.95)
qnorm(0.99)
qnorm(0.995)
qnorm(0.999)

#3.3
#10 patients, complication frequency for 20%, whats the probability of all 10 successfully
dbinom(0, size = 10, prob = .2)
#or
(1-.2)^10
#
plot(dnorm(-2:2))
