# Getting and Cleaning Data Course Project Repository:

Sanem Seren Sever(ampatha)

This Repositoy contains the files for  the course project of Getting and Cleaning Data Course @[COURSERA - DataScience Track](https://www.coursera.org/specialization/jhudatascience/1).

## Description of the Repository Objects
### Readme.md:
 This file itself, description of the Repository
### run_analysis.R
 contains the code accmplishing requirements of the course project. before running the code please read the CodeBook for requirements.
### CodeBook.md:
 Contains the information about run_analysis.R output data tidy_subset_averages.txt must be read carefully.
 
## Purpose:
Providing information about the variables,input and output data and transformations implemented in run_analysis.R.

## Source Data
Source Data of the project is downloaded from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
Detailed information about the data  can be found at:
 [The UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


## Data Set Description
Dataset contains six 561 different sencore measurements of six different body activity from 30 subjects.
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
Subject data is gathered twice for testing and training purposes.
### Source Data contains subject ids,activity ids and measurements for test and train datasets in below files respectively:

 - subject_train.txt
 - subject_test.txt
 - y_test.txt
 - y_train.txt
 - x_train.txt
 - x_test.txt

### information about measurements and activities can be found in below files:
 - features.txt       
 - activity_labels.txt 

## Code Prerequisites/Prerequirements:
run_analysis.R requires the Source data to be downloaded and extracted.
working directory must be set to "UCI HAR Dataset"
code has a commentouted line 13 already hawing the setwd() command like:
setwd( "E:/CourseraCourses/DS/GCD/WorkDir/CourseAssgn/UCI HAR Dataset")
you can edit this line and uncomment it if you do not want to change working directory manually each time

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

