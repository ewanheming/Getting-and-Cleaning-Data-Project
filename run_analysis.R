library(data.table)
source("./loadData.R")
source("./processData.R")

# Load and tidy the test and training data
testData<-loadData("features.txt", "./test/X_test.txt", "./test/y_test.txt", "./test/subject_test.txt")
trainData<-loadData("features.txt", "./train/X_train.txt", "./train/y_train.txt", "./train/subject_train.txt")

# Roll up the activity and subject levels with the average of each variable 
testData<-processData(testData)
trainData<-processData(trainData)

# Merge the training and the test sets
data<-rbind(trainData, testData)

# Write the data out to a new file
write.csv(data, "./tidy.csv")
