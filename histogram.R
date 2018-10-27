#discrete numeric data

color=c('blue','green','blue','blue')
(x2=table(color))  
(x2a=cbind(x2))
hist(x2a)
barplot(x2a, beside=T)


h=hist(x2a)
h
hist(x2a, freq=F)
lines(density(x2a))
?ls
