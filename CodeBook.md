## Common columns

The run_analysis.R script generates two data frames called "combined_data" and "tidy_data".  These datasets contain the following signals as common features:

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

The set of variables that were estimated from these signals are: 

mean(): Mean value

std(): Standard deviation


## "combined_data"

This data frame also contains the following additional columns:

y.code: activity code

y.label: activity label

subject.code: subject code

data.usage: "trn" for the rows used for training, and "tst" for the observations used for testing


## "tidy_data"

This data frame contains two columns defining the stratum/group for which the mean value of each variable was computed:

subject: subject code

activity: activity label
