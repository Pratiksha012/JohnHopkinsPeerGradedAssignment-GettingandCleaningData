# Code book 
The purpose of this Codebook is to modify and update the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
The following steps were implemented to transform the data

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each measurement.

3. Uses descriptive activity names to name the activities in the data set

4. Appropriately labels the data set with descriptive variable names.

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# About run_analysis.R script:

The run_analysis.R file with R script performs the given 5 steps 

About the Variables:
x_test : Contains the x column values of the test Dataset

y_test : Contains the y column values of the test Dataset

x_train : Contains the x column values of the training Dataset

y_train : Contains the y column values of the training Dataset

subject_test : Contains the subject column values from the Subject table in the test Dataset

subject_train : Contains the subject column values from the Subject table in the train Dataset

features : Contains the column attributes of functions in the features table

activities : Contains the code and activity values from the Activity table

X_values_train_test : Cotains the x values of both the test and train Datsaset

X_values_train_test : Contains the y values of both the test and train Dataset

Merged_Data :  Contains the combined values from both the tables

Tidy_Data : Contains the cleaned values of the Merged Data

Independent_Tidy_Dataset : Independent tidy data set with the average of each variable for each activity and each subject
