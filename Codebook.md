Codebook
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequency measurements.

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

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
[44] "frequencyBodyAccelerometerJerkMagnitude.MeanFreq.." [45] "frequencyBodyGyrometerMagnitude.Mean.."
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
