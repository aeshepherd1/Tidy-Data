
Current functionality to produce tidy dataset:

The script which produces this tidy dataset uses the original files created from the above-described experiment.
The script produces intermediate datasets including relevant data from the original experiment dataset files.
The final intermediate dataset contains the mean and standard deviation measured by activity by participant.
The final tidy dataset produced contains the average of each variable in the intermediate dataset for each activity and participant.  

Following is a description of the original experiment and related data files:
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================

The following describes the original experiment and resulting dataset files.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

------------------------------------------------------

The original dataset from which this dataset was created includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': This file contains the activity code and activity description

- 'train/X_train.txt': Training set. These are the measurement values for the training group.

- 'train/y_train.txt': Training labels. This file contains the activity code related to the measurements.

- 'test/X_test.txt': Test set. These are the measurement values for the test group.

- 'test/y_test.txt': Test labels. This file contains the activity code related to the measurements.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample for the training group. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
-----------------------------------------------------
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
-----------------------------------------------------
Current functionality to produce tidy dataset:

The script which produces this tidy dataset uses the original files created from the above-described experiment.
The script produces intermediate datasets including relevant data from the original experiment dataset files.
The final intermediate dataset contains the mean and standard deviation measured by activity by participant.
The final tidy dataset produced contains the average of each variable in the intermediate dataset for each activity and participant.  





