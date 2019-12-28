# GettingCleaningData
JHU Getting and Cleaning Data Peer Assignment
This code loads files, merges the datafiles, cleans them, and saves to a new, tidy dataset. 

The code first loads files and assigns column names.

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

Codebook
 [1] "subject"                                           
 [2] "activity" : type of activity                                         
 [3] "timeBodyAccelerometer.Mean...X"                    
 [4] "timeBodyAccelerometer.Mean...Y"                    
 [5] "timeBodyAccelerometer.Mean...Z"                    
 [6] "timeGravityAccelerometer.Mean...X"                 
 [7] "timeGravityAccelerometer.Mean...Y"                 
 [8] "timeGravityAccelerometer.Mean...Z"                 
 [9] "timeBodyAccelerometerJerk.Mean...X"                
[10] "timeBodyAccelerometerJerk.Mean...Y"                
[11] "timeBodyAccelerometerJerk.Mean...Z"                
[12] "timeBodyGyrometer.Mean...X"                        
[13] "timeBodyGyrometer.Mean...Y"                        
[14] "timeBodyGyrometer.Mean...Z"                        
[15] "timeBodyGyrometerJerk.Mean...X"                    
[16] "timeBodyGyrometerJerk.Mean...Y"                    
[17] "timeBodyGyrometerJerk.Mean...Z"                    
[18] "timeBodyAccelerometerMagnitude.Mean.."             
[19] "timeGravityAccelerometerMagnitude.Mean.."          
[20] "timeBodyAccelerometerJerkMagnitude.Mean.."         
[21] "timeBodyGyrometerMagnitude.Mean.."                 
[22] "timeBodyGyrometerJerkMagnitude.Mean.."             
[23] "frequencyBodyAccelerometer.Mean...X"               
[24] "frequencyBodyAccelerometer.Mean...Y"               
[25] "frequencyBodyAccelerometer.Mean...Z"               
[26] "frequencyBodyAccelerometer.MeanFreq...X"           
[27] "frequencyBodyAccelerometer.MeanFreq...Y"           
[28] "frequencyBodyAccelerometer.MeanFreq...Z"           
[29] "frequencyBodyAccelerometerJerk.Mean...X"           
[30] "frequencyBodyAccelerometerJerk.Mean...Y"           
[31] "frequencyBodyAccelerometerJerk.Mean...Z"           
[32] "frequencyBodyAccelerometerJerk.MeanFreq...X"       
[33] "frequencyBodyAccelerometerJerk.MeanFreq...Y"       
[34] "frequencyBodyAccelerometerJerk.MeanFreq...Z"       
[35] "frequencyBodyGyrometer.Mean...X"                   
[36] "frequencyBodyGyrometer.Mean...Y"                   
[37] "frequencyBodyGyrometer.Mean...Z"                   
[38] "frequencyBodyGyrometer.MeanFreq...X"               
[39] "frequencyBodyGyrometer.MeanFreq...Y"               
[40] "frequencyBodyGyrometer.MeanFreq...Z"               
[41] "frequencyBodyAccelerometerMagnitude.Mean.."        
[42] "frequencyBodyAccelerometerMagnitude.MeanFreq.."    
[43] "frequencyBodyAccelerometerJerkMagnitude.Mean.."    
[44] "frequencyBodyAccelerometerJerkMagnitude.MeanFreq.."
[45] "frequencyBodyGyrometerMagnitude.Mean.."            
[46] "frequencyBodyGyrometerMagnitude.MeanFreq.."        
[47] "frequencyBodyGyrometerJerkMagnitude.Mean.."        
[48] "frequencyBodyGyrometerJerkMagnitude.MeanFreq.."    
[49] "angle.tBodyAccelerometerMean.gravity."             
[50] "angle.tBodyAccelerometerJerkMean..gravityMean."    
[51] "angle.tBodyGyrometerMean.gravityMean."             
[52] "angle.tBodyGyrometerJerkMean.gravityMean."         
[53] "angle.X.gravityMean."                              
[54] "angle.Y.gravityMean."                              
[55] "angle.Z.gravityMean."                              
[56] "timeBodyAccelerometer.STD...X"                     
[57] "timeBodyAccelerometer.STD...Y"                     
[58] "timeBodyAccelerometer.STD...Z"                     
[59] "timeGravityAccelerometer.STD...X"                  
[60] "timeGravityAccelerometer.STD...Y"                  
[61] "timeGravityAccelerometer.STD...Z"                  
[62] "timeBodyAccelerometerJerk.STD...X"                 
[63] "timeBodyAccelerometerJerk.STD...Y"                 
[64] "timeBodyAccelerometerJerk.STD...Z"                 
[65] "timeBodyGyrometer.STD...X"                         
[66] "timeBodyGyrometer.STD...Y"                         
[67] "timeBodyGyrometer.STD...Z"                         
[68] "timeBodyGyrometerJerk.STD...X"                     
[69] "timeBodyGyrometerJerk.STD...Y"                     
[70] "timeBodyGyrometerJerk.STD...Z"                     
[71] "timeBodyAccelerometerMagnitude.STD.."              
[72] "timeGravityAccelerometerMagnitude.STD.."           
[73] "timeBodyAccelerometerJerkMagnitude.STD.."          
[74] "timeBodyGyrometerMagnitude.STD.."                  
[75] "timeBodyGyrometerJerkMagnitude.STD.."              
[76] "frequencyBodyAccelerometer.STD...X"                
[77] "frequencyBodyAccelerometer.STD...Y"                
[78] "frequencyBodyAccelerometer.STD...Z"                
[79] "frequencyBodyAccelerometerJerk.STD...X"            
[80] "frequencyBodyAccelerometerJerk.STD...Y"            
[81] "frequencyBodyAccelerometerJerk.STD...Z"            
[82] "frequencyBodyGyrometer.STD...X"                    
[83] "frequencyBodyGyrometer.STD...Y"                    
[84] "frequencyBodyGyrometer.STD...Z"                    
[85] "frequencyBodyAccelerometerMagnitude.STD.."         
[86] "frequencyBodyAccelerometerJerkMagnitude.STD.."     
[87] "frequencyBodyGyrometerMagnitude.STD.."             
[88] "frequencyBodyGyrometerJerkMagnitude.STD.."
