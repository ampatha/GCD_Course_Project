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



