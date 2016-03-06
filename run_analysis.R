library(tidyr);
library(dplyr);
library(data.table);

# Get the measurements for the training and test subjects
train_values <- read.table("./UCI HAR Dataset/train/X_train.txt", quote = "\"", stringsAsFactors = FALSE);
test_values <- read.table("./UCI HAR Dataset/test/X_test.txt", quote = "\"", stringsAsFactors = FALSE);

# Combine the training and test measurements
all_values <- bind_rows(train_values, test_values);

# Get the features
features <- read.table("./UCI HAR Dataset/features.txt", quote = "\"", stringsAsFactors = FALSE);

# Apply feature name to the columns in the values table 
names(all_values) <- features$V2;

# Get the subjects (participants) for the training and test groups
train_subjects <- read.table("./UCI HAR Dataset/train/subject_train.txt", quote = "\"", stringsAsFactors = FALSE);
test_subjects <- read.table("./UCI HAR Dataset/test/subject_test.txt", quote = "\"", stringsAsFactors = FALSE);

# Combine the subjects into one table
all_subjects <- bind_rows(train_subjects, test_subjects);

# Get the activities (activity code and name)
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", quote = "\"", stringsAsFactors = FALSE);

# Get the activity codes for the training and test subjects
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", quote = "\"", stringsAsFactors = FALSE);
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", quote = "\"", stringsAsFactors = FALSE);

# Combine the activity codes into one table
y_all <- bind_rows(y_train, y_test);

# Combine the subjects and their activities
train_test_subject_activity <- data.frame(all_subjects, y_all);

# Re-name the columns
names(train_test_subject_activity) <- c("SubjectId", "V1");

# Join the table with the subjects and activity code with the table containing the
# activity code and description by activity code
sa <- full_join(train_test_subject_activity, activity_labels);

# Create a table containing the subject id and the activity name
subject_activityName <- data.frame(sa$SubjectId, sa$V2);

# Re-name to columns to be more readable
names(subject_activityName) <- c("SubjectId", "Activity");

# Convert the data frame to a tbl_df and then make the complete dataset by combining
# the subjects, activities and all of the values
subject_activityName <- tbl_df(subject_activityName);
ds_complete <- cbind(subject_activityName, all_values);

# Extract the mean and standard deviation columns into a new table
mean <- ds_complete[, 3:5];
std <- ds_complete[, 6:8];
mean_std <- cbind(as.data.table(mean), std);

# Create a new table containing only the needed information:
# subject, activity, means and standard deviations.  Then make readable variable names.
subject_activity_mean_std <- cbind(subject_activityName, mean_std) %>% group_by(SubjectId, Activity);
colNames <- c("SubjectId", "Activity", "MeanX", "MeanY", "MeanZ", "StdX", "StdY", "StdZ");
names(subject_activity_mean_std) <- colNames;

# Create final dataset containing the average of each variable for each activity and each subject.
# Apply meaningful variable names.
tidy_data <- summarize(subject_activity_mean_std, mean(MeanX), mean(MeanY), mean(MeanZ), mean(StdX), mean(StdY), mean(StdZ)) %>% arrange(SubjectId, Activity);
colNames <- c("SubjectId", "Activity", "AvgMeanX", "AvgMeanY", "AvgMeanZ", "AvgStdX", "AvgStdY", "AvgStdZ");
names(tidy_data) <- colNames;
View(tidy_data)