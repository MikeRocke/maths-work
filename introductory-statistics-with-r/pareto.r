library(qcc)

df <- data.frame(product=c('a','b','c','d','e','f'), count=c(40,57,50,82,17,16))

pareto.chart(df$count)
