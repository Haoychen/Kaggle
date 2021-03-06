
#add some code for testing
print(5+4)
a<-3+5

library(randomForest)

train<- read.csv('train.csv')
test <- read.csv('test.csv')
#gendermodel<- read.csv('gendermodel.csv')
#genderclassmodel<- read.csv('genderclassmodel.csv')
train.y<- as.factor(train$Survived)

train.x<- train[,c(3,5,7,8,10,12)]
try.test<- test[,c(2,4,6,7,9,11)]
try.test[153,5]<- mean(try.test[,5], na.rm = T)

rf<- randomForest(train.x, train.y,ntree = 500)

rfpredice<- predict(rf, try.test)