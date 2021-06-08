# Getting-and-Cleaning-Data-Week-4-Assignment
The purpose of this README is to explain the content of this repository and what the project is about.

The overall project was to manipulate some given messy data into a tidy data set.

The actual data can be accessed through the following link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The creation of the tidy data set was based on the following intructions
  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names. 
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Content of repository
To solve this project I created the following files, which all is accessible in this repository:

**tidydata.txt.:** is the tidy data set that I created through transformation of the original messy data.

**CodeBook.md:** is an explanation of the different variables and data in the tidy data set, 
and the transformations made to the original data in order to create the tidy data.

**run_analysis.R:** is the actual R script I used to create the tidy data set. 

## The Data
The data received to create the tidy data, was seperated into a training and testing data set.
These data sets was further seperated into a X and Y data set.

Here the variables in the X data set are measurements from the embedded accelerometer and gyroscope
of a smartphone (Samsung Galaxy S II). The measurements were done by waist mounting the smartphone to 30 different subjects and making them do different acitivties.

The variables in the Y data set are the different activities the subjects where doing while the signals from the accelerometer and gyroscope were being measured. 

The complete explanation of the experiment can be found throug the following link:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## The Creation of the Tidy Data
The tidy data set was as mentioned above created by using the R scipt "run_analysis" accessible in this repository.

The R script goes through the following steps:

1. Access the data online and downloads it locally.
2. Loads the data sets into R and creates the necessary data frames.
3. Merges the different data frames into one data frame.
4. Selects the wanted variables for analysis.
5. Changes the names of the different variables to make them more descriptive.
6. Takes the average of each variable for each activity and subject
7. Saves the final data set as a .txt file called "tidydata"

