CodeBook
==================================================================

The original data to create this analysis represents data collected from 
the accelerometers from the Samsung Galaxy S smartphone. 
A full description of this data can be found at
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data generated by run_analysis.R can be found in tidyData.txt. This is a 
file where the values are separated by comas. The content of the file is 
explained in the following sections.

## Process to clean the data

To clean the data we have applied the following 5 steps:

1. Merges the training and the test sets to create one data set.
Files from test and train directories have been loaded. The columns of the three files of test have been combined 
and as well the columns from the train files. Then the rows of the resulting data.frames have been combined.

2. Extracts only the measurements on the mean and standard deviation for each measurement. 
A subselection of the columns that had names of mean() or std() have been selected according to the file features.txt.

3. Uses descriptive activity names to name the activities in the data set
In the column that refereed to the activity, the number has been substituted by the value according to activity_label.txt 

4. Appropriately labels the data set with descriptive variable names. 
The file features.txt has been used to name the columns of the data frame.

5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
A second data frame has been created. To fill it we have grouped the values by activity and subject and then we
have applied the mean to all the values of each group per column. We have as well changed the name of the column
adding mean_at the beginning to show that they contain means. Finally, a file named tidyData.txt has been created
containing the value of this data frame.  

## Character Variables
Activity - Description of the activity
Subject - Identifier of the subject

## Numeric Variables

The following variables are averages. After the word mean_ there is the original
variable and some other properties:

- After mean_ there is either t or f. If it was a Finally a Fast Fourier 
Transform (FFT) it begins with f. 
- Then there is the name of the original variable. 
- Afterwards it shows if the original variables were either means or standard 
deviations. 
- X, Y and Z at the end of each variable refers to the axis.

### List of means:

mean_tBodyAcc-mean()-X
mean_tBodyAcc-mean()-Y
mean_tBodyAcc-mean()-Z
mean_tGravityAcc-mean()-X
mean_tGravityAcc-mean()-Y
mean_tGravityAcc-mean()-Z
mean_tBodyAccJerk-mean()-X
mean_tBodyAccJerk-mean()-Y
mean_tBodyAccJerk-mean()-Z
mean_tBodyGyro-mean()-X
mean_tBodyGyro-mean()-Y
mean_tBodyGyro-mean()-Z
mean_tBodyGyroJerk-mean()-X
mean_tBodyGyroJerk-mean()-Y
mean_tBodyGyroJerk-mean()-Z
mean_tBodyAccMag-mean()
mean_tGravityAccMag-mean()
mean_tBodyAccJerkMag-mean()
mean_tBodyGyroMag-mean()
mean_tBodyGyroJerkMag-mean()
mean_fBodyAcc-mean()-X
mean_fBodyAcc-mean()-Y
mean_fBodyAcc-mean()-Z
mean_fBodyAcc-meanFreq()-X
mean_fBodyAcc-meanFreq()-Y
mean_fBodyAcc-meanFreq()-Z
mean_fBodyAccJerk-mean()-X
mean_fBodyAccJerk-mean()-Y
mean_fBodyAccJerk-mean()-Z
mean_fBodyAccJerk-meanFreq()-X
mean_fBodyAccJerk-meanFreq()-Y
mean_fBodyAccJerk-meanFreq()-Z
mean_fBodyGyro-mean()-X
mean_fBodyGyro-mean()-Y
mean_fBodyGyro-mean()-Z
mean_fBodyGyro-meanFreq()-X
mean_fBodyGyro-meanFreq()-Y
mean_fBodyGyro-meanFreq()-Z
mean_fBodyAccMag-mean()
mean_fBodyAccMag-meanFreq()
mean_fBodyBodyAccJerkMag-mean()
mean_fBodyBodyAccJerkMag-meanFreq()
mean_fBodyBodyGyroMag-mean()
mean_fBodyBodyGyroMag-meanFreq()
mean_fBodyBodyGyroJerkMag-mean()
mean_fBodyBodyGyroJerkMag-meanFreq()
mean_tBodyAcc-std()-X
mean_tBodyAcc-std()-Y
mean_tBodyAcc-std()-Z
mean_tGravityAcc-std()-X
mean_tGravityAcc-std()-Y
mean_tGravityAcc-std()-Z
mean_tBodyAccJerk-std()-X
mean_tBodyAccJerk-std()-Y
mean_tBodyAccJerk-std()-Z
mean_tBodyGyro-std()-X
mean_tBodyGyro-std()-Y
mean_tBodyGyro-std()-Z
mean_tBodyGyroJerk-std()-X
mean_tBodyGyroJerk-std()-Y
mean_tBodyGyroJerk-std()-Z
mean_tBodyAccMag-std()
mean_tGravityAccMag-std()
mean_tBodyAccJerkMag-std()
mean_tBodyGyroMag-std()
mean_tBodyGyroJerkMag-std()
mean_fBodyAcc-std()-X
mean_fBodyAcc-std()-Y
mean_fBodyAcc-std()-Z
mean_fBodyAccJerk-std()-X
mean_fBodyAccJerk-std()-Y
mean_fBodyAccJerk-std()-Z
mean_fBodyGyro-std()-X
mean_fBodyGyro-std()-Y
mean_fBodyGyro-std()-Z
mean_fBodyAccMag-std()
mean_fBodyBodyAccJerkMag-std()
mean_fBodyBodyGyroMag-std()
mean_fBodyBodyGyroJerkMag-std()