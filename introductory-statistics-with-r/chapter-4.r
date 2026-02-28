library(ISwR)

x <- rnorm(50)
mean(x)

sd(x)

var(x)

quantile(x)

pvec <- seq(0,1,0.1)
quantile(x, pvec)

attach(juul)
mean(igf1)

mean(igf1, na.rm = T)
summary(igf1)

detach(juul)
juul$sex <- factor(juul$sex, labels = c("M","F"))
juul$menarche <- factor(juul$menarche, labels=c("No","Yes"))
juul$tanner <- factor(juul$tanner, labels=c("I","II","III","IV","V"))
attach(juul)

summary(juul)

hist(x)

#graphical distributions
n <- length(x)
plot(sort(x), (1:n)/n, type="s", ylim=c(0,1))

qqnorm(x)

#box plots
par(mfrow = c(1,2))
boxplot(IgM)
boxplot(log(IgM))
par(mfrow = c(1,1))


attach(red.cell.folate)
tapply(folate,ventilation,mean)
tapply(folate,ventilation,sd)
xbar <- tapply(folate, ventilation, mean)
s <- tapply(folate, ventilation, sd)
n <- tapply(folate, ventilation, length)
cbind(mean=xbar, std.devs=s, n=n)

tapply(igf1, tanner, mean, na.rm=T)


aggregate(juul[c("age","igf1")], list(sex=juul$sex), mean, na.rm=T)

caff.marital <- matrix(c(652,1537,598,242,36,46,38,21,218,327,106,67), nrow=3, byrow=T)

colnames(caff.marital) <- c("0", "1-150","151-300",">300")
rownames(caff.marital) <- c("Married", "Prev.Married", "Single")
names(dimnames(caff.marital)) <- c("marital", "consumption")
caff.marital


table(sex, menarche)

tanner.sex <- table(tanner, sex)
tanner.sex

margin.table(tanner.sex, 2)


tanner.sex/sum(tanner.sex)

total.caff <- margin.table(caff.marital, 2)
total.caff
barplot(total.caff, col="white")


par(mfrow=c(2,2))
barplot(caff.marital, col="white")
barplot(t(caff.marital), col="blue")
barplot(t(caff.marital), col=c("red","green","blue","yellow"), legend.text = colnames(caff.marital), beside=T)
barplot(prop.table(t(caff.marital), 2), col="red", beside=T)
par(mfrow=c(1,1))
