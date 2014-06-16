
## 1. Merges the training and the test sets to create one data set.
dataXtest <- read.table("UCI HAR Dataset/test/X_test.txt", comment.char = "", colClasses="numeric")
dataYtest <- read.table("UCI HAR Dataset/test/y_test.txt", comment.char = "", colClasses="character")
dataSubjecttest <- read.table("UCI HAR Dataset/test/subject_test.txt", comment.char = "", colClasses="numeric")

dataXtrain <- read.table("UCI HAR Dataset/train/X_train.txt", comment.char = "", colClasses="numeric")
dataYtrain <- read.table("UCI HAR Dataset/train/y_train.txt", comment.char = "", colClasses="character")
dataSubjecttrain <- read.table("UCI HAR Dataset/train/subject_train.txt", comment.char = "", colClasses="numeric")

dataTest <- cbind(dataXtest,dataYtest,dataSubjecttest)
dataTrain <- cbind(dataXtrain,dataYtrain,dataSubjecttrain)
data <- rbind(dataTest,dataTrain)

## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
features <- read.table("UCI HAR Dataset/features.txt", comment.char = "", colClasses="character")
colNums <- c(grep("mean()",features$V2),grep("std()",features$V2),562,563)
dataReduced <- data[,colNums]

## 3. Uses descriptive activity names to name the activities in the data set
activityNames <- read.table("UCI HAR Dataset/activity_labels.txt", comment.char = "", colClasses="character")
dataReduced[dataReduced[,80]==1,80] <- "WALKING"
dataReduced[dataReduced[,80]==2,80] <- "WALKING_UPSTAIRS"
dataReduced[dataReduced[,80]==3,80] <- "WALKING_DOWNSTAIRS"
dataReduced[dataReduced[,80]==4,80] <- "SITTING"
dataReduced[dataReduced[,80]==5,80] <- "STANDING"
dataReduced[dataReduced[,80]==6,80] <- "LAYING"

## 4. Appropriately labels the data set with descriptive variable names. 
colNames <- features[colNums,"V2"]
colNames[80] <- "Activity"
colNames[81] <- "Subject"

names(dataReduced) <- colNames

##5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


library(plyr)
tidyData <- ddply(dataReduced,.(Activity,Subject),numcolwise(mean))

# We change the names of the numeric columns of the tidy data to point out that they are means
namesTidy <- names(tidyData)
namesTidy[3:81] <- paste("mean",namesTidy[3:81],sep="_")
names(tidyData) <- namesTidy
write.csv(tidyData,file="tidyData.txt")

