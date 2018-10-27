library(rpart)
library(rpart.plot)
#import data from online site
path = 'https://raw.githubusercontent.com/thomaspernet/data_csv_r/master/data/titanic_csv.csv'
titanic <-read.csv(path)
head(titanic)
names(titanic)
data = titanic[,c(2,3,5,6,7)]  #select few columns only
head(data)

#Decision Tree
fit <- rpart(survived~., data = data, method = 'class')

fit
rpart.plot(fit, extra = 106, cex=.8,nn=T)  #plot

]printcp(fit) #select complexity parameter
prunetree2 = prune(fit, cp=.014)
rpart.plot(prunetree2, cex=.8,nn=T)
prunetree2
nrow(data)