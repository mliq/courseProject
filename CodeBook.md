## Data
All data comes from the experimental data downloaded from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). 

## Transformations Done, Variables Added
- The variables have been altered from the original study to remove parentheses and dashes, (which may cause errors in certain R functions) however, capital letters were retained ("camel case") to improve readability.
- One new variable has been added, activityLabels, which matches the activity code number to the character string which explains the activity.

## Variables
- subject - Test subject number 1-30 in the original experiment.
- activityLabels - 1 of 6 activities done by the subject for that measurement: WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, or LAYING. 
- activity - a number 1-6 from the original experiment which represents the activity done by the subject for that measurement.

The remaining variables range from -1 to 1, and are either means (those which contain "mean" in variable name) or standard deviations (those which  contain "std" in variable name) corresponding to various measurements from the original study data. The new variable names are listed below, followed by an explanation copied from the original study's **"features\_info.txt"**. 

- tBodyAccmeanX
- tBodyAccstdX	
- tBodyAccmeanY	
- tBodyAccstdY	
- tBodyAccmeanZ	
- tBodyAccstdZ	
- tGravityAccmeanX	
- tGravityAccstdX	
- tGravityAccmeanY	
- tGravityAccstdY	
- tGravityAccmeanZ	
- tGravityAccstdZ	
- tBodyAccJerkmeanX	
- tBodyAccJerkstdX	
- tBodyAccJerkmeanY	
- tBodyAccJerkstdY	
- tBodyAccJerkmeanZ	
- tBodyAccJerkstdZ	
- tBodyGyromeanX	
- tBodyGyrostdX	
- tBodyGyromeanY	
- tBodyGyrostdY	
- tBodyGyromeanZ	
- tBodyGyrostdZ	
- tBodyGyroJerkmeanX	
- tBodyGyroJerkstdX	
- tBodyGyroJerkmeanY	
- tBodyGyroJerkstdY	
- tBodyGyroJerkmeanZ	
- tBodyGyroJerkstdZ	
- tBodyAccMagmean	
- tBodyAccMagstd	
- tGravityAccMagmean	
- tGravityAccMagstd	
- tBodyAccJerkMagmean	
- tBodyAccJerkMagstd	
- tBodyGyroMagmean	
- tBodyGyroMagstd	
- tBodyGyroJerkMagmean	
- tBodyGyroJerkMagstd	
- fBodyAccmeanX	
- fBodyAccstdX	
- fBodyAccmeanY	
- fBodyAccstdY	
- fBodyAccmeanZ	
- fBodyAccstdZ	
- fBodyAccmeanFreqX	
- fBodyAccJerkstdX	
- fBodyAccmeanFreqY	
- fBodyAccJerkstdY	
- fBodyAccmeanFreqZ	
- fBodyAccJerkstdZ	
- fBodyAccJerkmeanX	
- fBodyGyrostdX	
- fBodyAccJerkmeanY	
- fBodyGyrostdY	
- fBodyAccJerkmeanZ	
- fBodyGyrostdZ	
- fBodyAccJerkmeanFreqX	
- fBodyAccMagstd	
- fBodyAccJerkmeanFreqY	
- fBodyBodyAccJerkMagstd	
- fBodyAccJerkmeanFreqZ	
- fBodyBodyGyroMagstd	
- fBodyGyromeanX	
- fBodyBodyGyroJerkMagstd	
- fBodyGyromeanY	
- fBodyGyromeanZ	
- fBodyGyromeanFreqX	
- fBodyGyromeanFreqY	
- fBodyGyromeanFreqZ	
- fBodyAccMagmean	
- fBodyAccMagmeanFreq	
- fBodyBodyAccJerkMagmean	
- fBodyBodyAccJerkMagmeanFreq	
- fBodyBodyGyroMagmean	
- fBodyBodyGyroMagmeanFreq	
- fBodyBodyGyroJerkMagmean	
- fBodyBodyGyroJerkMagmeanFreq

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
