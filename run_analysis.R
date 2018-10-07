#This script is meant to do and explain all the gathering, cleaning and organization
#of the Getting and Cleaning Data Assignment

#This script assumes that all of the files are in the current working directory

#0) Library calls

library(dplyr)
library(tidyr)
library(data.table)

#1) Merges the training and the test sets to create one data set

#1.1) Read and store the "X_train.txt" and "X_test.txt" files

X_train <- read.table("X_train.txt", header = FALSE, stringsAsFactors = FALSE)

X_test <- read.table("X_test.txt", header = FALSE, stringsAsFactors = FALSE)

#1.2) Merge Test and Train data sets

merged_data_set <- rbind(X_train, X_test)

#2) Extracts only the measurements on the mean and standard deviation for each measurement

#To extract the mean and standard deviations, it is necessary to label the columns

#2.1) Read and store "features.txt" file, that contains column labels

features <- read.table("features.txt", header = FALSE, stringsAsFactors = FALSE)

column_label <- features[,2]

#2.2) Add column labels to merged data set

colnames(merged_data_set) <- column_label

#2.3) Subset merged data set by selecting mean and standard information

mean_and_std_vector <- (grepl("mean.", column_label) | grepl("std.", column_label))

mean_and_std_data_set <- merged_data_set[, mean_and_std_vector == TRUE]

#3) Uses descriptive activity names to name the activities in the data set

#3.1) Read and store "y_test.txt", "y_train.txt", "subject_test.txt", "subject_train.txt"
#and "activity_labels.txt"

y_test <- read.table("y_test.txt", header = FALSE, stringsAsFactors = FALSE)

y_train <- read.table("y_train.txt", header = FALSE, stringsAsFactors = FALSE)

subject_test <- read.table("subject_test.txt", header = FALSE, stringsAsFactors = FALSE)

subject_train <- read.table("subject_train.txt", header = FALSE, stringsAsFactors = FALSE)

activity_labels <- read.table("activity_labels.txt", header = FALSE, stringsAsFactors = FALSE)

#3.2) Merge y_train and y_test to form unique activity column

activity_id_merged <- rbind(y_train, y_test)

colnames(activity_id_merged) <- "activity_id"

#3.3) Merge subject_train and subject_test to form unique subject column

subject_merged <- rbind(subject_train, subject_test)

colnames(subject_merged) <- "subject_id"

#3.4) Bind subject and activity columns

subject_activity_id <- cbind(subject_merged, activity_id_merged)

#3.5) Create table to match activity ID to activity name

colnames(activity_labels) <- c("activity_id", "activity_name")

subject_activity <- merge(subject_activity_id, activity_labels, by = "activity_id")

#3.6) Add subject_activity to mean_and_std_data_set, excluding activity id

final_data_set <- cbind(subject_activity[2:3], mean_and_std_data_set)

#4) Appropriately labels the data set with descriptive variable names

#Labels were added to the data set as it was being transformed, so it is already done.
#To check labels:

#print(labels(final_data_set))

#5) From the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject

#5.1) Create tidy data set 

tidy_data_set <- final_data_set %>%
  
  group_by(activity_name, subject_id) %>%
  
  summarise_if(is.numeric, funs(mean))

#5.2) Save tidy data set to txt file

write.table(tidy_data_set, file = "tidy_data_set.txt", row.names = FALSE, col.names = TRUE)


