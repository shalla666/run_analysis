run_analysis
============

Getting and Cleaning Data Course -- Course Project

The files are as follows:

   readme.md - This file
   run_analysis.R - R Script File created with RStudio Version 0.98.976
   tidydata.txt - Output data file
   
Original data files are located in the folder "UCI HAR Dataset", and the data itself was obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. However, the data may or may not be obtained from the same web site, as the site now gives a 403 Access error as of this writing.


The R script reads in the activity labels, variable labels, test data, and training data from the subdirectory called "UCI HAR Dataset". The test data and the training data are reloaded after extracting only the columns containing "mean" and "std" in the column names. Then each data set is combined with the Subject and Activity files, creating one large test and one large training datasets. The two sets are then merged together. The Activity number is replaced with a descriptive field, based on the data from the Activity file. The data is then melted and casted to create a tidy data set.

Data Code Book for tidydata.txt:

Subject     2
      Subject Number             Unique Identifier, 0-30
      
Activity    18
      Activity Description       WALKING
                                 WALKING_UPSTAIRS
                                 WALKING_DOWNSTAIRS
                                 SITTING
                                 STANDING
                                 LAYING

tBodyAcc-mean()-X
      Body Acceleration (Time) X Axis, Mean
      
tBodyAcc-mean()-Y
      Body Acceleration (Time) Y Axis, Mean

tBodyAcc-mean()-Z
      Body Acceleration (Time) Z Axis, Mean
      
tBodyAcc-std()-X
      Body Acceleration (Time) X Axis, Standard Deviation
      
tBodyAcc-std()-Y
      Body Acceleration (Time) Y Axis, Standard Deviation
      
tBodyAcc-std()-Z
      Body Acceleration (Time) Z Axis, Standard Deviation

tGravityAcc-mean()-X
      Gravity Acceleration (Time) X Axis, Mean

tGravityAcc-mean()-Y
      Gravity Acceleration (Time) Y Axis, Mean
      
tGravityAcc-mean()-Z
      Gravity Acceleration (Time) Z Axis, Mean
      
tGravityAcc-std()-X

tGravityAcc-std()-Y

tGravityAcc-std()-Z

tBodyAccJerk-mean()-X

tBodyAccJerk-mean()-Y

tBodyAccJerk-mean()-Z

tBodyAccJerk-std()-X

tBodyAccJerk-std()-Y

tBodyAccJerk-std()-Z

tBodyGyro-mean()-X

tBodyGyro-mean()-Y

tBodyGyro-mean()-Z

tBodyGyro-std()-X

tBodyGyro-std()-Y

tBodyGyro-std()-Z

tBodyGyroJerk-mean()-X

tBodyGyroJerk-mean()-Y

tBodyGyroJerk-mean()-Z

tBodyGyroJerk-std()-X

tBodyGyroJerk-std()-Y

tBodyGyroJerk-std()-Z

tBodyAccMag-mean()

tBodyAccMag-std()

tGravityAccMag-mean()

tGravityAccMag-std()

tBodyAccJerkMag-mean()

tBodyAccJerkMag-std()

tBodyGyroMag-mean()

tBodyGyroMag-std()

tBodyGyroJerkMag-mean()

tBodyGyroJerkMag-std()

fBodyAcc-mean()-X

fBodyAcc-mean()-Y

fBodyAcc-mean()-Z

fBodyAcc-std()-X

fBodyAcc-std()-Y

fBodyAcc-std()-Z

fBodyAcc-meanFreq()-X

fBodyAcc-meanFreq()-Y

fBodyAcc-meanFreq()-Z

fBodyAccJerk-mean()-X

fBodyAccJerk-mean()-Y

fBodyAccJerk-mean()-Z

fBodyAccJerk-std()-X

fBodyAccJerk-std()-Y

fBodyAccJerk-std()-Z

fBodyAccJerk-meanFreq()-X

fBodyAccJerk-meanFreq()-Y

fBodyAccJerk-meanFreq()-Z

fBodyGyro-mean()-X

fBodyGyro-mean()-Y

fBodyGyro-mean()-Z

fBodyGyro-std()-X

fBodyGyro-std()-Y

fBodyGyro-std()-Z

fBodyGyro-meanFreq()-X

fBodyGyro-meanFreq()-Y

fBodyGyro-meanFreq()-Z

fBodyAccMag-mean()

fBodyAccMag-std()

fBodyAccMag-meanFreq()

fBodyBodyAccJerkMag-mean()

fBodyBodyAccJerkMag-std()

fBodyBodyAccJerkMag-meanFreq()

fBodyBodyGyroMag-mean()

fBodyBodyGyroMag-std()

fBodyBodyGyroMag-meanFreq()

fBodyBodyGyroJerkMag-mean()

fBodyBodyGyroJerkMag-std()

fBodyBodyGyroJerkMag-meanFreq()
   
