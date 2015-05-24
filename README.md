## Course Project for "Getting and Cleaning Data"
The code "run_analysis.R" assumes that the Samsung Galaxy S smartphone data of a specific format and directory dstructure exist in the working directory as available from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
The analysis combines training and test data into one dataset, and extract mean and std data for each feature as variables.  This combined dataset is available in the data frame "combined_data".
The analysis also generates tidy dataset "tidy_data" from the combined data that summarizes the mean of each variable for each strata of (activity, subject) combinations.
