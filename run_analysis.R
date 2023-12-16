library(dplyr)
install.packages("dplyr")

#The datasets were downloaded from the listed websites and imported into my RStudio lab environment to avoid encountering access errors.

#Reading the values of the test Dataset and assigning the values to variables x_test, y_test, subject_test accordingly

x_test <- read.table("~/Downloads/UCI HAR Dataset/test/X_test.txt", col.names = features$functions)
y_test <- read.table("~/Downloads/UCI HAR Dataset/test/y_test.txt", col.names = "code")
subject_test <- read.table("~/Downloads/UCI HAR Dataset/test/subject_test.txt", col.names = "subject")

#Reading the values of the train Dataset and assigning the values to variables x_train, y_train, subject_train accordingly

x_train <- read.table("~/Downloads/UCI HAR Dataset/train/X_train.txt", col.names = features$functions)
y_train <- read.table("~/Downloads/UCI HAR Dataset/train/y_train.txt", col.names = "code")
subject_train <- read.table("~/Downloads/UCI HAR Dataset/train/subject_train.txt", col.names = "subject")

#Reading the Feature table and assigning the values to features variable

features <- read.table("~/Downloads/UCI HAR Dataset/features.txt", col.names = c("n","functions"))

#Reading the Activities table and assigning the values to activities variable

activities <- read.table("~/Downloads/UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))

#Step1: Merges the training and the test sets to create one data set

#Binding the X values of both test and train dataset
X_values_train_test <- rbind(x_train, x_test)

#Binding the Y values of both test and train dataset
Y_values_train_test <- rbind(y_train, y_test)

#Binding the Subject values of both test and train dataset
Subject_values <- rbind(subject_train, subject_test)

#Step 2: Extracts only the measurements on the mean and standard deviation for each measurement.

Merged_Data <- cbind(Subject_values, Y_values_train_test, X_values_train_test)

#Step 3: Uses descriptive activity names to name the activities in the data set.

TidyData <- Merged_Data %>% select(subject, code, contains("mean"), contains("std"))

#Step 4: Appropriately labels the data set with descriptive variable names.

TidyData$code <- activities[TidyData$code, 2]

names(TidyData)[2] = "activity"
names(TidyData)<-gsub("Acc", "Accelerometer", names(TidyData))
names(TidyData)<-gsub("Gyro", "Gyroscope", names(TidyData))
names(TidyData)<-gsub("BodyBody", "Body", names(TidyData))
names(TidyData)<-gsub("Mag", "Magnitude", names(TidyData))
names(TidyData)<-gsub("^t", "Time", names(TidyData))
names(TidyData)<-gsub("^f", "Frequency", names(TidyData))
names(TidyData)<-gsub("tBody", "TimeBody", names(TidyData))
names(TidyData)<-gsub("-mean()", "Mean", names(TidyData), ignore.case = TRUE)
names(TidyData)<-gsub("-std()", "STD", names(TidyData), ignore.case = TRUE)
names(TidyData)<-gsub("-freq()", "Frequency", names(TidyData), ignore.case = TRUE)
names(TidyData)<-gsub("angle", "Angle", names(TidyData))
names(TidyData)<-gsub("gravity", "Gravity", names(TidyData))

#Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Independent_Tidy_Dataset <- TidyData %>%
  group_by(subject, activity) %>%
  summarise_all(list(mean = mean, median = median))
write.table(Independent_Tidy_Dataset, "FinalData.txt", row.name = FALSE)

#Checking the variable names of the Independentdataset
str(Independent_Tidy_Dataset)

#Displaying the Final clean data
Independent_Tidy_Dataset