### Code Book
This file is destined to explain all the steps from raw data to tidy data according to Coursera Week 4 Assignment instructions:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Data Sets Description
X_train and X_test data is derived from sensor signals aquired from waist-mounted smartphone from 30 subjects during walking, walking upstairs, walking downstairs, sitting, standing and laying.
y_train and y_test indicate activity type the subjects performed during recording.
subject_train and subject_test indicate the subject performing the test.
features indicates all the measured variable names.

### Code "run_analysis.R" action to the raw data sets
* Combines training and test data for X, y and subject data sets;
* Subsets the data to mantain only avarages and standard deviation of the measures;
* Labels columns properly;
* Generates tidy data containing the average of each variable, for each activity and each subject.

### Tidy data set description

### The variables in the tidy data
The tidy data contains 180 rows and 81 columns.

### Description of variable lables for each measure
* mean(): Mean value
* std(): Standard deviation

### Tidy data label and unit
The tidy data contains 180 rows (averaged based on activity) and 81 columns (79 variables and activity labels).

subject_id - integer, [1:30]
activity_name - character, [WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING]
"tBodyAcc-mean()-X" - numeric
"tBodyAcc-mean()-Y" - numeric              
"tBodyAcc-mean()-Z" - numeric
"tBodyAcc-std()-X" - numeric    
"tBodyAcc-std()-Y" - numeric
"tBodyAcc-std()-Z" - numeric     
"tGravityAcc-mean()-X" - numeric
"tGravityAcc-mean()-Y" - numeric 
"tGravityAcc-mean()-Z" - numeric
"tGravityAcc-std()-X" - numeric 
"tGravityAcc-std()-Y" - numeric
"tGravityAcc-std()-Z" - numeric  
"tBodyAccJerk-mean()-X" - numeric
"tBodyAccJerk-mean()-Y" - numeric
"tBodyAccJerk-mean()-Z" - numeric
"tBodyAccJerk-std()-X" - numeric
"tBodyAccJerk-std()-Y" - numeric
"tBodyAccJerk-std()-Z" - numeric 
"tBodyGyro-mean()-X" - numeric
"tBodyGyro-mean()-Y" - numeric   
"tBodyGyro-mean()-Z" - numeric
"tBodyGyro-std()-X" - numeric   
"tBodyGyro-std()-Y" - numeric
"tBodyGyro-std()-Z" - numeric    
"tBodyGyroJerk-mean()-X" - numeric
"tBodyGyroJerk-mean()-Y" - numeric
"tBodyGyroJerk-mean()-Z" - numeric
"tBodyGyroJerk-std()-X" - numeric
"tBodyGyroJerk-std()-Y" - numeric
"tBodyGyroJerk-std()-Z" - numeric
"tBodyAccMag-mean()" - numeric
"tBodyAccMag-std()" - numeric   
"tGravityAccMag-mean()" - numeric
"tGravityAccMag-std()" - numeric
"tBodyAccJerkMag-mean()" - numeric
"tBodyAccJerkMag-std()" - numeric
"tBodyGyroMag-mean()" - numeric
"tBodyGyroMag-std()" - numeric  
"tBodyGyroJerkMag-mean()" - numeric
"tBodyGyroJerkMag-std()" - numeric
"fBodyAcc-mean()-X" - numeric
"fBodyAcc-mean()-Y" - numeric    
"fBodyAcc-mean()-Z" - numeric
"fBodyAcc-std()-X" - numeric    
"fBodyAcc-std()-Y" - numeric
"fBodyAcc-std()-Z" - numeric     
"fBodyAcc-meanFreq()-X" - numeric
"fBodyAcc-meanFreq()-Y" - numeric
"fBodyAcc-meanFreq()-Z" - numeric
"fBodyAccJerk-mean()-X" - numeric
"fBodyAccJerk-mean()-Y" - numeric
"fBodyAccJerk-mean()-Z" - numeric
"fBodyAccJerk-std()-X" - numeric
"fBodyAccJerk-std()-Y" - numeric 
"fBodyAccJerk-std()-Z" - numeric
"fBodyAccJerk-meanFreq()-X" - numeric 
"fBodyAccJerk-meanFreq()-Y" - numeric
"fBodyAccJerk-meanFreq()-Z" - numeric
"fBodyGyro-mean()-X" - numeric
"fBodyGyro-mean()-Y" - numeric   
"fBodyGyro-mean()-Z" - numeric
"fBodyGyro-std()-X" - numeric   
"fBodyGyro-std()-Y" - numeric
"fBodyGyro-std()-Z" - numeric    
"fBodyGyro-meanFreq()-X" - numeric
"fBodyGyro-meanFreq()-Y" - numeric
"fBodyGyro-meanFreq()-Z" - numeric
"fBodyAccMag-mean()" - numeric
"fBodyAccMag-std()" - numeric
"fBodyAccMag-meanFreq()" - numeric    
"fBodyBodyAccJerkMag-mean()" - numeric
"fBodyBodyAccJerkMag-std()" - numeric
"fBodyBodyAccJerkMag-meanFreq()" - numeric 
"fBodyBodyGyroMag-mean()" - numeric
"fBodyBodyGyroMag-std()" - numeric
"fBodyBodyGyroMag-meanFreq()" - numeric
"fBodyBodyGyroJerkMag-mean()" - numeric
"fBodyBodyGyroJerkMag-std()" - numeric
"fBodyBodyGyroJerkMag-meanFreq()" - numeric
