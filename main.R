#Insert data
CancerData <- read.csv("DataThyroidCancer.csv")

# Audit the Data
str(CancerData)
summary(CancerData)

# Split data on test and training
library(caret)

trainIndex <- createDataPartition(CancerData$BenMal, p = 0.8, list = FALSE, times = 1)

dataTrain <- CancerData[trainIndex,]
dataTest <- CancerData[-trainIndex,]

summary(dataTrain)

# Att importance
require(randomForest)
fit=randomForest(factor(BenMal)~., data=CancerData)


Can[!complete.cases(mydata),]