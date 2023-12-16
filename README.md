# JohnHopkinsPeerGradedAssignment-GettingandCleaningData
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below
2) a link to a Github repository with your script for performing the analysis
3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 
You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example 
this article. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
 

Here are the data for the project:

 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
  

You should create one R script called run_analysis.R that does the following. 

1.Merges the training and the test sets to create one data set.

2.Extracts only the measurements on the mean and standard deviation for each measurement. 

3.Uses descriptive activity names to name the activities in the data set

4.Appropriately labels the data set with descriptive variable names. 

5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# About the run_analysis.R file script:

As the session was carried out in Coursera lab sandbox environment, the datasets were downloaded from the listed websites into my RStudio lab environment as Lab sandboxes have limited access to external sites and hence uploading the data files directly will help ensure I do not encounter errors

#Reading the values of the test Dataset and assigning the values to variables x_test, y_test, subject_test accordingly

#Reading the values of the train Dataset and assigning the values to variables x_train, y_train, subject_train accordingly

#Reading the Feature table and assigning the values to features variable

#Reading the Activities table and assigning the values to activities variable

#Step1: Merges the training and the test sets to create one data set

#Binding the X values of both test and train dataset
#Binding the Y values of both test and train dataset
#Binding the Subject values of both test and train dataset

#Step 2: Extracts only the measurements on the mean and standard deviation for each measurement.

#Step 3: Uses descriptive activity names to name the activities in the data set.

#Step 4: Appropriately labels the data set with descriptive variable names.

#Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#Checking the variable names of the Independentdataset

#Displaying the Final clean data

