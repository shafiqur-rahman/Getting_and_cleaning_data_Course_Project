The Data
-------------------------

For each record it is provided:
======================================


- An identifier of the subject who carried out the experiment.
- Its activity label. 
- The description of activity label
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 79-aggregated feature vector with time and frequency domain variables. 


The Variables(Features)
-------------------------
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain 
signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass 
Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity 
acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, 
tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

For the complete description of the features, please reffer to the features_info.txt and feaures.txt files of the raw database.

For our analysis we only considered the below list of features:

subject,
activity_label,
activity_label_desc,
tBodyAcc-mean()-X,
tBodyAcc-mean()-Y,
tBodyAcc-mean()-Z,
tGravityAcc-mean()-X,
tGravityAcc-mean()-Y,
tGravityAcc-mean()-Z,
tBodyAccJerk-mean()-X,
tBodyAccJerk-mean()-Y,
tBodyAccJerk-mean()-Z,
tBodyGyro-mean()-X,
tBodyGyro-mean()-Y,
tBodyGyro-mean()-Z,
tBodyGyroJerk-mean()-X,
tBodyGyroJerk-mean()-Y,
tBodyGyroJerk-mean()-Z,
tBodyAccMag-mean(),
tGravityAccMag-mean(),
tBodyAccJerkMag-mean(),
tBodyGyroMag-mean(),
tBodyGyroJerkMag-mean(),
fBodyAcc-mean()-X,
fBodyAcc-mean()-Y,
fBodyAcc-mean()-Z,
fBodyAcc-meanFreq()-X,
fBodyAcc-meanFreq()-Y,
fBodyAcc-meanFreq()-Z,
fBodyAccJerk-mean()-X,
fBodyAccJerk-mean()-Y,
fBodyAccJerk-mean()-Z,
fBodyAccJerk-meanFreq()-X,
fBodyAccJerk-meanFreq()-Y,
fBodyAccJerk-meanFreq()-Z,
fBodyGyro-mean()-X,
fBodyGyro-mean()-Y,
fBodyGyro-mean()-Z,
fBodyGyro-meanFreq()-X,
fBodyGyro-meanFreq()-Y,
fBodyGyro-meanFreq()-Z,
fBodyAccMag-mean(),
fBodyAccMag-meanFreq(),
fBodyBodyAccJerkMag-mean(),
fBodyBodyAccJerkMag-meanFreq(),
fBodyBodyGyroMag-mean(),
fBodyBodyGyroMag-meanFreq(),
fBodyBodyGyroJerkMag-mean(),
fBodyBodyGyroJerkMag-meanFreq(),
tBodyAcc-std()-X,
tBodyAcc-std()-Y,
tBodyAcc-std()-Z,
tGravityAcc-std()-X,
tGravityAcc-std()-Y,
tGravityAcc-std()-Z,
tBodyAccJerk-std()-X,
tBodyAccJerk-std()-Y,
tBodyAccJerk-std()-Z,
tBodyGyro-std()-X,
tBodyGyro-std()-Y,
tBodyGyro-std()-Z,
tBodyGyroJerk-std()-X,
tBodyGyroJerk-std()-Y,
tBodyGyroJerk-std()-Z,
tBodyAccMag-std(),
tGravityAccMag-std(),
tBodyAccJerkMag-std(),
tBodyGyroMag-std(),
tBodyGyroJerkMag-std(),
fBodyAcc-std()-X,
fBodyAcc-std()-Y,
fBodyAcc-std()-Z,
fBodyAccJerk-std()-X,
fBodyAccJerk-std()-Y,
fBodyAccJerk-std()-Z,
fBodyGyro-std()-X,
fBodyGyro-std()-Y,
fBodyGyro-std()-Z,
fBodyAccMag-std(),
fBodyBodyAccJerkMag-std(),
fBodyBodyGyroMag-std(),
fBodyBodyGyroJerkMag-std()

The first three variables are the identifier of a the subjects who carried out the experiment denoted from 1 to 30, the label of the various activities denoted from 1 to 6 and name of the activities.
