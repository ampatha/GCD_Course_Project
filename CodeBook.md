# Getting and Cleaning Data Course Project CodeBook:

Sanem Seren Sever

## Purpose:
Providing information about the variables,input and output data and transformations implemented in run_analysis.R.

## Source Data
Source Data of the project is downloaded from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
Detailed information about the data  can be found at:
 [The UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Code Desctription:
Code Consists of initialisation and 5 parts as described below:
### Initialisation:
 loads dplyr package.
 
### Part1:Read Files and Correct Column Names:
  At this part data files and information files are read to memory and column labels of data are changed according to the information on information Lookups
  This part also sattisfies  Requirement 4 by replacing the Column Names "Appropriately label the data set with descriptive variable names."
 
### Part 2: Combine Files and Merge Test & Train Data:
 At this part of the code data read on Part one is merged to create one tidy dataset.
 This Part also sattisfies Requirement 1 "Merge the training and the test sets to create one data set"

### Part 3: Create subset of Merged Dataset with only mean and stdev measurements and ID's
 At this part a subset of the data is created via grepping the column names of ID's and Mean and std Measurements.
 Result of this part sattisfies Requirement 2(Extract only the measurements on the mean and standard deviation for each measurement)
 
### Part 4: Label activityID column as a factor
 ActivityID column gets converted to a factor whose levels and labels are taken from activity_labels.txt 
 Req 3 is accomplished via Part 4 "Use descriptive activity names to name the activities in the data set"
 
### Part 5: Calculate means of all columns by ID's and dump to file:
  Averages of the Measurements by ID's are calculated and stored to tidy_subset_average.txt file in the working directory.This Part sattisfies Req 5 "From the data set in step 4, create a second, independent tidy data set with the  average of each variable for each activity and each subject"

## Output Data tidy_subset_averages:
run_analysis.R calculates 68 variables:
## 1	  subjectID                  :
 integer  1 1 1 1 1 1 2 2 2 2 ...
## 2	  activityID                 :
 Factor 
Levels:  Labels:
1        WALKING
2        WALKING_UPSTAIRS
3        WALKING_DOWNSTAIRS
4        SITTING
5        STANDING
6        LAYING  
## 3	  tBodyAcc-mean()-X          :
 numeric, mean of self at source dataset.
  0.277 0.255 0.289 0.261 0.279 ...
## 4	  tBodyAcc-mean()-Y          :
 numeric, mean of self at source dataset.
  -0.01738 -0.02395 -0.00992 -0.00131 -0.01614 ...
## 5	  tBodyAcc-mean()-Z          :
 numeric, mean of self at source dataset.
  -0.1111 -0.0973 -0.1076 -0.1045 -0.1106 ...
## 6	  tBodyAcc-std()-X           :
 numeric, mean of self at source dataset.
  -0.284 -0.355 0.03 -0.977 -0.996 ...
## 7	  tBodyAcc-std()-Y           :
 numeric, mean of self at source dataset.
  0.11446 -0.00232 -0.03194 -0.92262 -0.97319 ...
## 8	  tBodyAcc-std()-Z           :
 numeric, mean of self at source dataset.
  -0.26 -0.0195 -0.2304 -0.9396 -0.9798 ...
## 9	  tGravityAcc-mean()-X       :
 numeric, mean of self at source dataset.
  0.935 0.893 0.932 0.832 0.943 ...
## 10	  tGravityAcc-mean()-Y       :
 numeric, mean of self at source dataset.
  -0.282 -0.362 -0.267 0.204 -0.273 ...
## 11	  tGravityAcc-mean()-Z       :
 numeric, mean of self at source dataset.
  -0.0681 -0.0754 -0.0621 0.332 0.0135 ...
## 12	  tGravityAcc-std()-X        :
 numeric, mean of self at source dataset.
  -0.977 -0.956 -0.951 -0.968 -0.994 ...
## 13	  tGravityAcc-std()-Y        :
 numeric, mean of self at source dataset.
  -0.971 -0.953 -0.937 -0.936 -0.981 ...
## 14	  tGravityAcc-std()-Z        :
 numeric, mean of self at source dataset.
  -0.948 -0.912 -0.896 -0.949 -0.976 ...
## 15	  tBodyAccJerk-mean()-X      :
 numeric, mean of self at source dataset.
  0.074 0.1014 0.0542 0.0775 0.0754 ...
## 16	  tBodyAccJerk-mean()-Y      :
 numeric, mean of self at source dataset.
  0.028272 0.019486 0.02965 -0.000619 0.007976 ...
## 17	  tBodyAccJerk-mean()-Z      :
 numeric, mean of self at source dataset.
  -0.00417 -0.04556 -0.01097 -0.00337 -0.00369 ...
## 18	  tBodyAccJerk-std()-X       :
 numeric, mean of self at source dataset.
  -0.1136 -0.4468 -0.0123 -0.9864 -0.9946 ...
## 19	  tBodyAccJerk-std()-Y       :
 numeric, mean of self at source dataset.
  0.067 -0.378 -0.102 -0.981 -0.986 ...
## 20	  tBodyAccJerk-std()-Z       :
 numeric, mean of self at source dataset.
  -0.503 -0.707 -0.346 -0.988 -0.992 ...
## 21	  tBodyGyro-mean()-X         :
 numeric, mean of self at source dataset.
  -0.0418 0.0505 -0.0351 -0.0454 -0.024 ...
## 22	  tBodyGyro-mean()-Y         :
 numeric, mean of self at source dataset.
  -0.0695 -0.1662 -0.0909 -0.0919 -0.0594 ...
## 23	  tBodyGyro-mean()-Z         :
 numeric, mean of self at source dataset.
  0.0849 0.0584 0.0901 0.0629 0.0748 ...
## 24	  tBodyGyro-std()-X          :
 numeric, mean of self at source dataset.
  -0.474 -0.545 -0.458 -0.977 -0.987 ...
## 25	  tBodyGyro-std()-Y          :
 numeric, mean of self at source dataset.
  -0.05461 0.00411 -0.12635 -0.96647 -0.98773 ...
## 26	  tBodyGyro-std()-Z          :
 numeric, mean of self at source dataset.
  -0.344 -0.507 -0.125 -0.941 -0.981 ...
## 27	  tBodyGyroJerk-mean()-X     :
 numeric, mean of self at source dataset.
  -0.09 -0.1222 -0.074 -0.0937 -0.0996 ...
## 28	  tBodyGyroJerk-mean()-Y     :
 numeric, mean of self at source dataset.
  -0.0398 -0.0421 -0.044 -0.0402 -0.0441 ...
## 29	  tBodyGyroJerk-mean()-Z     :
 numeric, mean of self at source dataset.
  -0.0461 -0.0407 -0.027 -0.0467 -0.049 ...
## 30	  tBodyGyroJerk-std()-X      :
 numeric, mean of self at source dataset.
  -0.207 -0.615 -0.487 -0.992 -0.993 ...
## 31	  tBodyGyroJerk-std()-Y      :
 numeric, mean of self at source dataset.
  -0.304 -0.602 -0.239 -0.99 -0.995 ...
## 32	  tBodyGyroJerk-std()-Z      :
 numeric, mean of self at source dataset.
  -0.404 -0.606 -0.269 -0.988 -0.992 ...
## 33	  tBodyAccMag-mean()         :
 numeric, mean of self at source dataset.
  -0.137 -0.1299 0.0272 -0.9485 -0.9843 ...
## 34	  tBodyAccMag-std()          :
 numeric, mean of self at source dataset.
  -0.2197 -0.325 0.0199 -0.9271 -0.9819 ...
## 35	  tGravityAccMag-mean()      :
 numeric, mean of self at source dataset.
  -0.137 -0.1299 0.0272 -0.9485 -0.9843 ...
## 36	  tGravityAccMag-std()       :
 numeric, mean of self at source dataset.
  -0.2197 -0.325 0.0199 -0.9271 -0.9819 ...
## 37	  tBodyAccJerkMag-mean()     :
 numeric, mean of self at source dataset.
  -0.1414 -0.4665 -0.0894 -0.9874 -0.9924 ...
## 38	  tBodyAccJerkMag-std()      :
 numeric, mean of self at source dataset.
  -0.0745 -0.479 -0.0258 -0.9841 -0.9931 ...
## 39	  tBodyGyroMag-mean()        :
 numeric, mean of self at source dataset.
  -0.161 -0.1267 -0.0757 -0.9309 -0.9765 ...
## 40	  tBodyGyroMag-std()         :
 numeric, mean of self at source dataset.
  -0.187 -0.149 -0.226 -0.935 -0.979 ...
## 41	  tBodyGyroJerkMag-mean()    :
 numeric, mean of self at source dataset.
  -0.299 -0.595 -0.295 -0.992 -0.995 ...
## 42	  tBodyGyroJerkMag-std()     :
 numeric, mean of self at source dataset.
  -0.325 -0.649 -0.307 -0.988 -0.995 ...
## 43	  fBodyAcc-mean()-X          :
 numeric, mean of self at source dataset.
  -0.2028 -0.4043 0.0382 -0.9796 -0.9952 ...
## 44	  fBodyAcc-mean()-Y          :
 numeric, mean of self at source dataset.
  0.08971 -0.19098 0.00155 -0.94408 -0.97707 ...
## 45	  fBodyAcc-mean()-Z          :
 numeric, mean of self at source dataset.
  -0.332 -0.433 -0.226 -0.959 -0.985 ...
## 46	  fBodyAcc-std()-X           :
 numeric, mean of self at source dataset.
  -0.3191 -0.3374 0.0243 -0.9764 -0.996 ...
## 47	  fBodyAcc-std()-Y           :
 numeric, mean of self at source dataset.
  0.056 0.0218 -0.113 -0.9173 -0.9723 ...
## 48	  fBodyAcc-std()-Z           :
 numeric, mean of self at source dataset.
  -0.28 0.086 -0.298 -0.934 -0.978 ...
## 49	  fBodyAccJerk-mean()-X      :
 numeric, mean of self at source dataset.
  -0.1705 -0.4799 -0.0277 -0.9866 -0.9946 ...
## 50	  fBodyAccJerk-mean()-Y      :
 numeric, mean of self at source dataset.
  -0.0352 -0.4134 -0.1287 -0.9816 -0.9854 ...
## 51	  fBodyAccJerk-mean()-Z      :
 numeric, mean of self at source dataset.
  -0.469 -0.685 -0.288 -0.986 -0.991 ...
## 52	  fBodyAccJerk-std()-X       :
 numeric, mean of self at source dataset.
  -0.1336 -0.4619 -0.0863 -0.9875 -0.9951 ...
## 53	  fBodyAccJerk-std()-Y       :
 numeric, mean of self at source dataset.
  0.107 -0.382 -0.135 -0.983 -0.987 ...
## 54	  fBodyAccJerk-std()-Z       :
 numeric, mean of self at source dataset.
  -0.535 -0.726 -0.402 -0.988 -0.992 ...
## 55	  fBodyGyro-mean()-X         :
 numeric, mean of self at source dataset.
  -0.339 -0.493 -0.352 -0.976 -0.986 ...
## 56	  fBodyGyro-mean()-Y         :
 numeric, mean of self at source dataset.
  -0.1031 -0.3195 -0.0557 -0.9758 -0.989 ...
## 57	  fBodyGyro-mean()-Z         :
 numeric, mean of self at source dataset.
  -0.2559 -0.4536 -0.0319 -0.9513 -0.9808 ...
## 58	  fBodyGyro-std()-X          :
 numeric, mean of self at source dataset.
  -0.517 -0.566 -0.495 -0.978 -0.987 ...
## 59	  fBodyGyro-std()-Y          :
 numeric, mean of self at source dataset.
  -0.0335 0.1515 -0.1814 -0.9623 -0.9871 ...
## 60	  fBodyGyro-std()-Z          :
 numeric, mean of self at source dataset.
  -0.437 -0.572 -0.238 -0.944 -0.982 ...
## 61	  fBodyAccMag-mean()         :
 numeric, mean of self at source dataset.
  -0.1286 -0.3524 0.0966 -0.9478 -0.9854 ...
## 62	  fBodyAccMag-std()          :
 numeric, mean of self at source dataset.
  -0.398 -0.416 -0.187 -0.928 -0.982 ...
## 63	  fBodyBodyAccJerkMag-mean() : numeric, mean of self at source dataset.
  -0.0571 -0.4427 0.0262 -0.9853 -0.9925 ...
## 64	  fBodyBodyAccJerkMag-std()  : numeric, mean of self at source dataset.
  -0.103 -0.533 -0.104 -0.982 -0.993 ...
## 65	  fBodyBodyGyroMag-mean()    :
 numeric, mean of self at source dataset.
  -0.199 -0.326 -0.186 -0.958 -0.985 ...
## 66	  fBodyBodyGyroMag-std()     :
 numeric, mean of self at source dataset.
  -0.321 -0.183 -0.398 -0.932 -0.978 ...
## 67	  fBodyBodyGyroJerkMag-mean(): numeric, mean of self at source dataset.
  -0.319 -0.635 -0.282 -0.99 -0.995 ...
## 68	  fBodyBodyGyroJerkMag-std() : numeric, mean of self at source dataset.
  -0.382 -0.694 -0.392 -0.987 -0.995 ...
