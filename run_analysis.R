# code performs following:
#1. Merges the training and the test sets to create one data set.
#2. Extracts only the measurements on the mean and standard deviation for each measurement.
#3. Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive variable names.
#5. From the data set in step 4, creates a second, 
#   independent tidy data set with the average of each variable for each activity 
#   and each subject.

install.packages("plyr")
library(plyr)
setwd("~/Documents/Coursera/03 Getting & Cleaning Data/UCI HAR Dataset")

# 1 Merges the training and the test sets to create one data set.

# Merge Training & Testing Data
dfXTrain<-read.table("X_train.txt")
dfXTest<-read.table("X_test.txt")
dfX<-rbind(dfXTrain,dfXTest)

# Merge Training & Testing ID
dfYTrain<-read.table("y_train.txt")
dfYTest<-read.table("y_test.txt")
dfY<-rbind(dfYTrain,dfYTest)

# Merge Subject ID for Training & Testing
dfSubjectTrain<-read.table("subject_train.txt")
dfSubjectTest<-read.table("subject_test.txt")
dfSubject<-rbind(dfSubjectTrain,dfSubjectTest)

# 2 Extracts only the measurements on the mean and standard deviation for each measurement.

# ID mean and std variables within Features
dfFeatures<-read.table("features.txt",header = FALSE)
Variables<-grep("-mean\\(\\)|-std\\(\\)",dfFeatures[,2])
# Use mean and std variables from Features to extract training and testing data. 
Data<-dfX[,Variables]

# Assign mean and std variables as data headers and clean descriptions
names(Data)<-dfFeatures[Variables,2]
names(Data)<-gsub("\\(|\\)","",names(Data))
names(Data)<-tolower(names(Data))

# 3 Uses descriptive activity names to name the activities in the data set

# Clean activity descriptions
dfActivity<-read.table("activity_labels.txt",header = FALSE)
dfActivity[,2]<-gsub("_"," ",tolower(as.character(dfActivity[,2])))

# Assign activity descriptions to training and testing labels
dfY[,1]=dfActivity[dfY[,1],2]

# Give descriptive name to activity header
names(dfY)<-"activity"

# Give descriptive name to subject header
names(dfSubject)<-"subject"

# 4 Appropriately labels the data set with descriptive variable names.

# New data set with descriptive names
Measured<-cbind(dfSubject,dfY,Data)

# 5 second,independent tidy data set with the average of each variable  
#   for each activity and each subject

# Average for mean and std metrics for each subject and activity
Average<-aggregate(.~subject + activity, Measured, mean)
# Order Average based on subjects
Average<-Average[order(Average$subject,Average$activity),]
# Write file for Average of Activity per Subject
write.table(Average, file = "AvgVarData_Subject_Activity.txt",row.name=FALSE)

#dim(Average)
