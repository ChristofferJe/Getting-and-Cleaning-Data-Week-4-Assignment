library(tidyverse)
library(dplyr)
library(data.table)

# Deifning the name of the archive
filename <- "getdata_projectfiles_UCI HAR Dataset.zip"

# Checking if archive already exists.If not then downloads it.
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL, filename)
}  

# Checking if folder exists. If not unzip it from archive.
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}

# Assigning the data from the folder to individual data frames 
variables <- read.table("UCI HAR Dataset/features.txt", col.names = c("n","functions"))
activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("activityCode", "activity"))
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "Subject")
data_test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = variables$functions)
activity_code_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "activityCode")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "Subject")
data_train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = variables$functions)
activity_code_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "activityCode")


## STEP 1: Merging training and the test sets to create one data set

# Row binding the train data and test data into one data frame
data <- rbind(data_train, data_test)

# Row binding the activity code from the train data and test data into one data frame
activity_code <- rbind(activity_code_train, activity_code_test)

# Row binding the subject numbers from the train data and test data into one data frame
Subject <- rbind(subject_train, subject_test)

# Merging the three above data frames into one large data frame 
# containing both data, subject number and activity code for each observation
Merged_Data <- cbind(Subject, activity_code, data)


## STEP 2: Extracts only the measurements on the mean and standard deviation for each measurement. 

# Subsetting the data frame into a data frame only containing
# the subject number, activity code and variables that concerns either the mean or standard deviation
TidyData <- Merged_Data %>% 
  select(Subject, activityCode, contains("mean"), contains("std"))


## STEP 3: Uses descriptive activity names to name the activities in the data set

# Changing the activity code into the activity it is coded to represent
TidyData$Activity <- activities[TidyData$Activity, 2]


## STEP 4: Appropriately labels the data set with descriptive variable names. 

# Changing the variable names into descriptive names, in order to fulfill the 
# criteria of tidy data
names(TidyData)[2] = "Activity"
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

## STEP 5: From the data set in step 4, creates a second, independent tidy data set 
## with the average of each variable for each activity and each subject.

# Creating a subset of the tidy dataset only containing the average of each variable
# for each activity and each subject
FinalData <- TidyData %>%
  group_by(Subject, Activity) %>%
  summarise_all(funs(mean))

# Writes the data into a .txt file
write.table(FinalData, "FinalData.txt", row.name=FALSE)

FinalData
