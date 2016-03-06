Original Experiment Description:
The following describes the variables in the original dataset resulting from the experiment performed:

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

Original Experiment:
The following describes the variables in the original dataset resulting from the experiment performed:
The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

*****************************************
Variables in current dataset:

Intermediate datasets:

  Training and Test measurements:
    Measurement values extracted from original files for training and test subjects, and then combined into a single dataset
      train_values 
      test_values 
      all_values

  Training and Test subjects:
    IDs extracted from the original files for training and test subjects.  The training and test values were then combined into a single dataset.
    The IDs indicated which of 30 participants was involved for each record in the measurements dataset.
      train_subjects: V1 - subject ID
      test_subjects:  V1 - subject ID
      all_subjects:  V1 - subject ID

  Training and Test activities:
    The activity codes for the training and test records.  The training and test datasets were combined into a single dataset.
    These codes showed which activity was being performed for each record in the measurements dataset.
      y_train: V1 - activity code
      y_test:  V1 - activity code
      y_all:  V1 - activity code

  Subject and Activities:
    train_test_subject_activity - dataset created from the subject and activity datasets:
	SubjectId:  ID number of the participant
	V1:  Activity code

  Activity Labels:
    activity_labels - dataset created from the original data show the activity code and activity description
	V1 - Activity code
	V2 - Activity description

  Transformed subjects and activities:
    sa - dataset created by joining the subject and activities dataset with the activity labels on the activity code
      SubjectId - ID of participant
      V1 - activity code
      V2 - activity description

  Extraction from subjects and activities
    subject_activityName - includes only subject id and activity description
      SubjectId - ID of participant
      Activity - Description of activity

  Combined subject, activity and values
    ds_complete - table including participant id, activity description and all measurements from original data

  Extraction of mean and standard deviation
    mean_std - extract mean and standard deviation from complete dataset into a new table
      tBodyAcc-mean()-X - mean on x-axis
      tBodyAcc-mean()-Y - mean on y-axis
      tBodyAcc-mean()-Z - mean on z-axis
      tBodyAcc-std()-X - std on x-axis
      tBodyAcc-std()-Y - std on y-axis
      tBodyAcc-std()-Z - std on z-axis

  Combined mean, std, subject and activity
    subject_activity_mean_std (variable names changed to be more readable)
      SubjectId - ID of participant
      Activity - activity description
      MeanX - mean on x-axis     
      MeanY - mean on y-axis    
      MeanZ - mean on z-axis     
      StdX - std on x-axis    
      StdY - std on y-axis      
      StdZ - std on z-axis

Final tidy dataset
  SubjectId:  ID number of the participant 
  Activity:  The activity in which the subject participated as de-coded from its id number
  AvgMeanX:  The average of MeanX for a given participant for a given activity
  AvgMeanY:  The average of MeanY for a given participant for a given activity
  AvgMeanZ:  The average of MeanZ for a given participant for a given activity
  AvgStdX:  The average of StdX for a given participant for a given activity
  AvgStdY:  The average of StdY for a given participant for a given activity
  AvgStdZ:  The average of StdZ for a given participant for a given activity
