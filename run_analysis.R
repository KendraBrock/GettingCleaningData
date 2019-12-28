##Load files
setwd("C:/Users/Kendra/Downloads/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset")
test_subjects <- read.table("C:/Users/Kendra/Downloads/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
test_set <- read.table("C:/Users/Kendra/Downloads/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt", quote="\"", comment.char="", col.names = features$functions)
test_labels <- read.table("C:/Users/Kendra/Downloads/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt", quote="\"", comment.char="", col.names = "activity")
train_subjects <- read.table("C:/Users/Kendra/Downloads/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt", quote="\"", comment.char="", col.names = "subject")
train_set <- read.table("C:/Users/Kendra/Downloads/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt", quote="\"", comment.char="", col.names = features$functions)
train_labels <- read.table("C:/Users/Kendra/Downloads/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt", quote="\"", comment.char="", col.names = "activity")
features <- read.table("C:/Users/Kendra/Downloads/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt", quote="\"", comment.char="", col.names = c("n", "functions"))
activity_labels <- read.table("C:/Users/Kendra/Downloads/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt", quote="\"", comment.char="", col.names = c("activity", "activity_name"))

##Merges the training and test data sets to form one dataset.
Sets <- rbind(test_set, train_set)
Labels <- rbind(test_labels, train_labels)
subject <- rbind(test_subjects, train_subjects)
all <- cbind(subject,Sets,Labels)

##Extracts only the measurements on the mean and standard deviation for each measurement.
Tidy <- all %>% select(subject, activity, contains("mean"), contains("std"))

##Uses descriptive activity names.
Tidy$activity <- activity_labels[Tidy$activity, 2]

##Appropriately lables the dataset with descriptive variable names.
names(Tidy) <- gsub("Acc", "Accelerometer", names(Tidy))
names(Tidy) <- gsub("BodyBody", "Body", names(Tidy))
names(Tidy) <- gsub("Gyro", "Gyrometer", names(Tidy))
names(Tidy) <- gsub("Mag", "Magnitude", names(Tidy))
names(Tidy) <- gsub("^t", "time", names(Tidy))
names(Tidy) <- gsub("^f", "frequency", names(Tidy))
names(Tidy) <- gsub("mean()", "Mean", names(Tidy))
names(Tidy) <- gsub("std()", "STD", names(Tidy))

##Creates a second, independent tidy data set,
##with the average of each variable for each activity and each subject.
FinalData <- Tidy %>%
  group_by(subject, activity) %>%
  summarise_all(funs(mean)) %>%
    print()
write.table(FinalData, file = "FinalData.txt", row.names = FALSE)