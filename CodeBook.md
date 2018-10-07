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

## The variables in the tidy data
The tidy data contains 180 rows and 81 columns.

## Description of variable lables for each measure
* mean(): Mean value
* std(): Standard deviation

## Tidy data label and unit
The tidy data contains 180 rows (averaged based on activity) and 81 columns (79 variables and activity labels).

1.subject_id - integer, [1:30]
2.activity_name - character, [WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING]
3."tBodyAcc-mean()-X" - numeric
4."tBodyAcc-mean()-Y" - numeric              
5."tBodyAcc-mean()-Z" - numeric
6."tBodyAcc-std()-X" - numeric    
7."tBodyAcc-std()-Y" - numeric
8."tBodyAcc-std()-Z" - numeric     
9."tGravityAcc-mean()-X" - numeric
10."tGravityAcc-mean()-Y" - numeric 
11."tGravityAcc-mean()-Z" - numeric
12."tGravityAcc-std()-X" - numeric 
13."tGravityAcc-std()-Y" - numeric
14."tGravityAcc-std()-Z" - numeric  
15."tBodyAccJerk-mean()-X" - numeric
16."tBodyAccJerk-mean()-Y" - numeric
17."tBodyAccJerk-mean()-Z" - numeric
18."tBodyAccJerk-std()-X" - numeric
19."tBodyAccJerk-std()-Y" - numeric
20."tBodyAccJerk-std()-Z" - numeric 
21."tBodyGyro-mean()-X" - numeric
22."tBodyGyro-mean()-Y" - numeric   
23."tBodyGyro-mean()-Z" - numeric
24."tBodyGyro-std()-X" - numeric   
25."tBodyGyro-std()-Y" - numeric
26."tBodyGyro-std()-Z" - numeric    
27."tBodyGyroJerk-mean()-X" - numeric
28."tBodyGyroJerk-mean()-Y" - numeric
29."tBodyGyroJerk-mean()-Z" - numeric
30."tBodyGyroJerk-std()-X" - numeric
31."tBodyGyroJerk-std()-Y" - numeric
32."tBodyGyroJerk-std()-Z" - numeric
33."tBodyAccMag-mean()" - numeric
34."tBodyAccMag-std()" - numeric   
35."tGravityAccMag-mean()" - numeric
36."tGravityAccMag-std()" - numeric
37."tBodyAccJerkMag-mean()" - numeric
38."tBodyAccJerkMag-std()" - numeric
39."tBodyGyroMag-mean()" - numeric
40."tBodyGyroMag-std()" - numeric  
41."tBodyGyroJerkMag-mean()" - numeric
42."tBodyGyroJerkMag-std()" - numeric
43."fBodyAcc-mean()-X" - numeric
44."fBodyAcc-mean()-Y" - numeric    
45."fBodyAcc-mean()-Z" - numeric
46."fBodyAcc-std()-X" - numeric    
47."fBodyAcc-std()-Y" - numeric
48."fBodyAcc-std()-Z" - numeric     
49."fBodyAcc-meanFreq()-X" - numeric
50."fBodyAcc-meanFreq()-Y" - numeric
51."fBodyAcc-meanFreq()-Z" - numeric
52."fBodyAccJerk-mean()-X" - numeric
53."fBodyAccJerk-mean()-Y" - numeric
54."fBodyAccJerk-mean()-Z" - numeric
55."fBodyAccJerk-std()-X" - numeric
56."fBodyAccJerk-std()-Y" - numeric 
57."fBodyAccJerk-std()-Z" - numeric
58."fBodyAccJerk-meanFreq()-X" - numeric 
59."fBodyAccJerk-meanFreq()-Y" - numeric
60."fBodyAccJerk-meanFreq()-Z" - numeric
61."fBodyGyro-mean()-X" - numeric
62."fBodyGyro-mean()-Y" - numeric   
63."fBodyGyro-mean()-Z" - numeric
64."fBodyGyro-std()-X" - numeric   
65."fBodyGyro-std()-Y" - numeric
66."fBodyGyro-std()-Z" - numeric    
67."fBodyGyro-meanFreq()-X" - numeric
68."fBodyGyro-meanFreq()-Y" - numeric
69."fBodyGyro-meanFreq()-Z" - numeric
70."fBodyAccMag-mean()" - numeric
71."fBodyAccMag-std()" - numeric
72."fBodyAccMag-meanFreq()" - numeric    
73."fBodyBodyAccJerkMag-mean()" - numeric
74."fBodyBodyAccJerkMag-std()" - numeric
75."fBodyBodyAccJerkMag-meanFreq()" - numeric 
76."fBodyBodyGyroMag-mean()" - numeric
77."fBodyBodyGyroMag-std()" - numeric
78."fBodyBodyGyroMag-meanFreq()" - numeric
79."fBodyBodyGyroJerkMag-mean()" - numeric
80."fBodyBodyGyroJerkMag-std()" - numeric
81."fBodyBodyGyroJerkMag-meanFreq()" - numeric
