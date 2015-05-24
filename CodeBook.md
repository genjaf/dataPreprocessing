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

Any feature ending with XYZ corresponds to three features in 3D.  The set of variables that were estimated from these signals are: 

mean(): Mean value

std(): Standard deviation

Therefore, there are 66 variables from 33 features (8*3 3D-features + 9 single features).


## "combined_data"

In this data frame, all 66 common columns contain the raw data from the source dataset.  In addition, this data frame contains the following additional columns:

y.code: activity code

y.label: activity label

subject.code: subject code

data.usage: "trn" for the rows used for training, and "tst" for the observations used for testing


## "tidy_data"

In this data frame, all 66 common columns contain the mean of the raw data based on the group/stratum defined by the following two columns:

subject: subject code

activity: activity label
