# Code Book
The data set this code book explaines is located in the tidydata.txt file in this repository

The data set was made by manipulating data recieved from the following link
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Variables in the tidy data
The tidy data contains 180 rows and 88 columns.

### Rows
Each row contains average variables for each subject on each activity. 

### Columns
The original data contained 563 columns.
Here only the ones estimated from mean and standard deviation was kept in the tidy data (86 columns).
Also the subject ID and activity information was kept in the tidy data (2 columns). 

#### Subject and Activity
The tidy data is averaged based on subject and activity. 

The subject column is numbered sequentially from 1 to 30.

The activity column has 6 different types of activity

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING