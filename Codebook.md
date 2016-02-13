This codebook supports project from getting and cleaning data.
Full description available: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

All data for project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The R script called run_analysis.R does the following.

#1. Merges the training file and the test file to create one data set and one ID set.
dfXTrain
dfXTest
dfX. Data Set.
DfYTrain
dfYTest
dfY. ID Set.
Merges Subject ID to one Data Set: dfSubjectTrain and dfSubjectTest to dfSubject

#2. Extract data to align required Features, TestSubject and TrainSubject
Assign "Data" as df where Headers of mean and std are defined for dfX.


#3. Gives Descriptive Names for each variable.
using the names command:
"activity"
"subject"
clean mean and std measurement descriptors using "gsub"

#4. Defines Headers, Labels, & Subject 
Assign "Measured" as dataframe through a bind of DfSubject, dfY, and Data. 

#5. Extracts only the measurements on the mean and standard deviation for each measurement.
Assign "Average" as data for average mean and std metrics for each subject and activity.

