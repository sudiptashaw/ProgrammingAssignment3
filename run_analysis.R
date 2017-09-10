# File: run_analysis.R
# Author: Sudipta Shaw

# The purpose of this project is to demonstrate your ability to collect, 
# work with, and clean a data set. The goal is to prepare tidy data that 
# can be used for later analysis.

# This script does the following:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(dplyr)

# Download the file and put the file in the working directory
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./Data.zip",method="curl")

# Unzip the file
unzip(zipfile="./Data.zip")


# read training data set
X_training <- read.table("./UCI HAR Dataset/train/X_train.txt") # feature data
Y_training <- read.table("./UCI HAR Dataset/train/Y_train.txt") # activity data
subject_training <- read.table("./UCI HAR Dataset/train/subject_train.txt") # subject data

# read test data set
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt") # feature data
Y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt") # activity data
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt") # subject data

# 1> Merge the training and the test sets to create one data set and set names

# create 'X' data set
X_merged <- rbind(X_training, X_test) # feature data
# read features descriptions
featuredesc <- read.table("./UCI HAR Dataset/features.txt")
names(X_merged)<- featuredesc$V2

# create 'Y' data set 
Y_merged <- rbind(Y_training, Y_test) # activity data
names(Y_merged)<- c("activity")

# create 'subject' data set
subject_merged <- rbind(subject_training, subject_test) # subject data
names(subject_merged)<-c("subject")

# 2> Extracts only the measurements on the mean and standard deviation for each measurement.

# get only columns with mean() or std() in their names
features_subset <- featuredesc$V2[grep("mean\\(\\)|std\\(\\)",featuredesc$V2)]

# 3> Use descriptive activity names to name the activities in the data set

# read activity labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
# update values with correct activity names
Y_merged[, 1] <- activity_labels[Y_merged[, 1], 2]

# 4> Appropriately label the data set with descriptive variable names

# created data set for all data
combined_data <- cbind(X_merged,subject_merged,Y_merged)

# subset the desired columns
selected_cols <- c(as.character(features_subset), "subject", "activity" )
combined_data <- subset(combined_data,select=selected_cols)

names(combined_data) <- gsub("^t", "time", names(combined_data))
names(combined_data) <- gsub("^f", "frequency", names(combined_data))
names(combined_data) <- gsub("Acc", "Accelerometer", names(combined_data))
names(combined_data) <- gsub("Gyro", "Gyroscope", names(combined_data))
names(combined_data) <- gsub("Mag", "Magnitude", names(combined_data))
names(combined_data) <- gsub("BodyBody", "Body", names(combined_data))

# 5> Create a second, independent tidy data set with the average of each variable for each activity and each subject

combined_data2<-aggregate(. ~subject + activity, combined_data, mean)
combined_data2<-combined_data2[order(combined_data2$subject,combined_data2$activity),]

write.table(combined_data2, file = "./UCI HAR Dataset/subject_activity_avg.txt", row.names = FALSE, col.names = TRUE)