# Code Book
The data set this code book explaines is located in the tidydata.txt file in this repository.

The data set was made by manipulating data recieved from the following link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Variables in The Tidy Data
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

The activity column has 6 different types of activity:

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING 

#### Measured Variables
The measured variables that are averaged based on subject and activity,
is consiting of 86 different variables based either on meam or standard deviation:

"TimeBodyAccelerometer.mean...X" 
"TimeBodyAccelerometer.mean...Y" 
"TimeBodyAccelerometer.mean...Z" 
"TimeGravityAccelerometer.mean...X" 
"TimeGravityAccelerometer.mean...Y" 
"TimeGravityAccelerometer.mean...Z" 
"TimeBodyAccelerometerJerk.mean...X" 
"TimeBodyAccelerometerJerk.mean...Y" 
"TimeBodyAccelerometerJerk.mean...Z" 
"TimeBodyGyroscope.mean...X" 
"TimeBodyGyroscope.mean...Y" 
"TimeBodyGyroscope.mean...Z" 
"TimeBodyGyroscopeJerk.mean...X" 
"TimeBodyGyroscopeJerk.mean...Y" 
"TimeBodyGyroscopeJerk.mean...Z" 
"TimeBodyAccelerometerMagnitude.mean.." 
"TimeGravityAccelerometerMagnitude.mean.." 
"TimeBodyAccelerometerJerkMagnitude.mean.." 
"TimeBodyGyroscopeMagnitude.mean.." 
"TimeBodyGyroscopeJerkMagnitude.mean.." 
"FrequencyBodyAccelerometer.mean...X" 
"FrequencyBodyAccelerometer.mean...Y" 
"FrequencyBodyAccelerometer.mean...Z" 
"FrequencyBodyAccelerometer.meanFreq...X" 
"FrequencyBodyAccelerometer.meanFreq...Y" 
"FrequencyBodyAccelerometer.meanFreq...Z" 
"FrequencyBodyAccelerometerJerk.mean...X" 
"FrequencyBodyAccelerometerJerk.mean...Y" 
"FrequencyBodyAccelerometerJerk.mean...Z" 
"FrequencyBodyAccelerometerJerk.meanFreq...X" 
"FrequencyBodyAccelerometerJerk.meanFreq...Y" 
"FrequencyBodyAccelerometerJerk.meanFreq...Z" 
"FrequencyBodyGyroscope.mean...X" 
"FrequencyBodyGyroscope.mean...Y" 
"FrequencyBodyGyroscope.mean...Z" 
"FrequencyBodyGyroscope.meanFreq...X" 
"FrequencyBodyGyroscope.meanFreq...Y" 
"FrequencyBodyGyroscope.meanFreq...Z" 
"FrequencyBodyAccelerometerMagnitude.mean.." 
"FrequencyBodyAccelerometerMagnitude.meanFreq.." 
"FrequencyBodyAccelerometerJerkMagnitude.mean.." 
"FrequencyBodyAccelerometerJerkMagnitude.meanFreq.." 
"FrequencyBodyGyroscopeMagnitude.mean.." 
"FrequencyBodyGyroscopeMagnitude.meanFreq.." 
"FrequencyBodyGyroscopeJerkMagnitude.mean.." 
"FrequencyBodyGyroscopeJerkMagnitude.meanFreq.." 
"Angle.TimeBodyAccelerometerMean.Gravity." 
"Angle.TimeBodyAccelerometerJerkMean..GravityMean." 
"Angle.TimeBodyGyroscopeMean.GravityMean." 
"Angle.TimeBodyGyroscopeJerkMean.GravityMean." 
"Angle.X.GravityMean." 
"Angle.Y.GravityMean." 
"Angle.Z.GravityMean." 
"TimeBodyAccelerometer.std...X" 
"TimeBodyAccelerometer.std...Y" 
"TimeBodyAccelerometer.std...Z" 
"TimeGravityAccelerometer.std...X" 
"TimeGravityAccelerometer.std...Y" 
"TimeGravityAccelerometer.std...Z" 
"TimeBodyAccelerometerJerk.std...X" 
"TimeBodyAccelerometerJerk.std...Y" 
"TimeBodyAccelerometerJerk.std...Z" 
"TimeBodyGyroscope.std...X" 
"TimeBodyGyroscope.std...Y" 
"TimeBodyGyroscope.std...Z" 
"TimeBodyGyroscopeJerk.std...X" 
"TimeBodyGyroscopeJerk.std...Y" 
"TimeBodyGyroscopeJerk.std...Z" 
"TimeBodyAccelerometerMagnitude.std.." 
"TimeGravityAccelerometerMagnitude.std.." 
"TimeBodyAccelerometerJerkMagnitude.std.." 
"TimeBodyGyroscopeMagnitude.std.." 
"TimeBodyGyroscopeJerkMagnitude.std.." 
"FrequencyBodyAccelerometer.std...X" 
"FrequencyBodyAccelerometer.std...Y" 
"FrequencyBodyAccelerometer.std...Z" 
"FrequencyBodyAccelerometerJerk.std...X" 
"FrequencyBodyAccelerometerJerk.std...Y" 
"FrequencyBodyAccelerometerJerk.std...Z" 
"FrequencyBodyGyroscope.std...X" 
"FrequencyBodyGyroscope.std...Y" 
"FrequencyBodyGyroscope.std...Z" 
"FrequencyBodyAccelerometerMagnitude.std.." 
"FrequencyBodyAccelerometerJerkMagnitude.std.." 
"FrequencyBodyGyroscopeMagnitude.std.." 
"FrequencyBodyGyroscopeJerkMagnitude.std.."

## The Data

### Measurements 
The data in the 86 different measured variables was measured, using a 
waist mounted smartphone (Samsung Galaxy S II). 

*For more information about the maesurements read the README.md file
in this repository*

### Units

**Activity:** the activity variable is factor type.

**Subject:** the subject variable is integer type.

**Measured Variables:** all the measured variables are numeric type. 

## Manipulations

1. **Merge**: The test and train data was merged together into one data frame.

2. **Subsetting**: As mentioned above the original data consited of 563 variables. 
   Here only the ones regarding mean and standard deviation was used in the tidy data. 

3. **Name Change**: The names of the variables was changed to make them more descriptive.

4. **Averaging**: The average of each measured variable was taken for each 
   activity and each subject.
