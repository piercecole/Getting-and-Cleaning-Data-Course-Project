# Getting-and-Cleaning-Data-Course-Project
This README file  explains the analysis files connected with data from accelerometer measurements recorded from Samsung Galaxy S smartphone. This readme will explain how all of the scripts work and how they are connected.

A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data files may be downloaded from: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

To run the script built for this data file:
1. Unzip and set working directory to folder "HAR UCI Dataset"
2. Move run_analysis.R to the working directory
3. Use source(run_analysis.R) to create the tidy data set

To initiate the tidy data set run TidyData<-read.table("AvgVarData_Subject_Activity.txt")
Dimensions for data are 180 observations (30 subjects with 6 Activities Ea.) of 68 variables (subjects, activities, and 66 metrics for mean and stdev of accelerometer measurement).


