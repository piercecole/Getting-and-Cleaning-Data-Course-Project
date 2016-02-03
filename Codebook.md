This codebook supports project from getting and cleaning data.
Full description available: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

All data for project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The R script called run_analysis.R does the following.

#1. Merges the training file dftrainX and the test file dftestX to create one data set.
dfTrainX
dfTrainY
#2. Extract data to align required Features, TestSubject and TrainSubject
Features
TestSubject
TrainSubject
#3. Gives Descriptive Names for each variable.
#4. Defines Headers, Labels, & Subject 
#5. Extracts only the measurements on the mean and standard deviation for each measurement.
#6. Appropriately labels the data set with descriptive variable names.
names(dfX)<-"measured"
names(dfY)<-"activity"
names(Subject)<-"subject"
#7  As a last step creates a second, independent tidy data set with the average of each variable for each activity and each subject.
