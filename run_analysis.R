##***************************************************************************************##
##***************************************************************************************##
## ##VERSION      ##AUTHOR      ##DATE         ##PURPOSE                                 ##
##    1.0          SSSEVER      2015-03-20     DS Signature Track G&CD Course Project    ##
##                                                                                       ##
## NAME   :RUN_ANALYIS                                                                   ##
## SOURCE : Human Activity Recognition Using Smartphones Dataset                         ##
##***************************************************************************************##
##***************************************************************************************##
## REQUIREMENTS:
##You should create one R script called run_analysis.R that does the following:
##
##  1. Merges the training and the test sets to create one data set.
##  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
##  3. Uses descriptive activity names to name the activities in the data set
##  4. Appropriately labels the data set with descriptive variable names. 
##  5. From the data set in step 4, creates a second, independent tidy data set with the 
## average of each variable for each activity and each subject.
##
##***************************************************************************************##

## Change Working Directory To the File Location 
# setwd( "E:/CourseraCourses/DS/GCD/WorkDir/CourseAssgn/UCI HAR Dataset")
##load  dplyr
 library(dplyr)

## Part1:Read Files and Correct Column Names:
#----------------------------------------------------------------------------------------------------
## Req 4. Appropriately label the data set with descriptive variable names. 
#----------------------------------------------------------------------------------------------------
 
#Lookups 
 feat  = read.table('./features.txt',header=FALSE);
 actL  = read.table('./activity_labels.txt',header=FALSE); 
#Correct names(Lookups)(Req.4 Part1): 
 names(actL)<-c("activityID","activityDesc")
 names(feat)<-c("measurementID","measurementDesc")

#Subjects:
 sTr   = read.table('./train/subject_train.txt',header=FALSE); 
 sTs   = read.table('./test/subject_test.txt',header=FALSE); 
#Correct names(Subjects)(Req.4 Part2) : 
 names(sTr)<-c("subjectID")
 names(sTs)<-c("subjectID")
 
#Measurements:
 mTr   = read.table('./train/x_train.txt',header=FALSE); 
 mTs   = read.table('./test/x_test.txt',header=FALSE); 
#Correct names(Measurements)(Req.4 Part3) : 
 names(mTr)<-feat$measurementDesc
 names(mTs)<-feat$measurementDesc

#Activities
 acTr = read.table('./train/y_train.txt',header=FALSE);
 acTs  = read.table('./test/y_test.txt',header=FALSE); 
#Correct names(acTx)(Req.4 Complete) : 
 names(acTr)<-c("activityID")
 names(acTs)<-c("activityID")

## Part 2: Combine Files and Merge Test & Train Data:
#----------------------------------------------------------------------------------------------------
## Req:1. Merge the training and the test sets to create one data set:
#----------------------------------------------------------------------------------------------------
#Combine Subjects(Req.1 Part1) :
 sub <-rbind(sTr,sTs)
  
#Combine Measurements(Req.1 Part2) :
 mea <-rbind(mTr,mTs)  
 
#Combine Correspondinf Measurement ActivityIDs(Req.1 Part3) :
 act <-rbind(acTr,acTs)
 
#Merge Subjects, Activities & Measurements data for Human Activity Recognition(har)(Req.1 Complete): 
 har<-cbind(sub,act,mea)

## Part 3: Create subset of har with only mean and stdev measurements and ID's(harmeastd)
#----------------------------------------------------------------------------------------------------
##Req 2. Extract only the measurements on the mean and standard deviation for each measurement.
#----------------------------------------------------------------------------------------------------
#Get list of required columns for subsetting data only mean and stdev measurements and ID's :
 nmsharmeastd <- grep("ID|-(|mean|std)\\(\\)", names(har))

#Create subset of har with only mean and stdev measurements and ID's(harmeastd)
 harmeastd<- har[,nmsharmeastd]

## Part 4: Label activityID column as a factor
#----------------------------------------------------------------------------------------------------
##Req 3. Use descriptive activity names to name the activities in the data set
#----------------------------------------------------------------------------------------------------
harmeastd$activityID<-factor(harmeastd$activityID,levels=actL$activityID,labels=actL$activityDesc)

## Part 5: Calculate means of all columns by ID's and dump to file:
#----------------------------------------------------------------------------------------------------
##Req 5. From the data set in step 4, creates a second, independent tidy data set with the 
## average of each variable for each activity and each subject:
#----------------------------------------------------------------------------------------------------
#Calculate means of all columns by ID's:

 tidy_subset <-harmeastd %>%
 group_by(subjectID,activityID) %>% 
 summarise_each(funs(mean)) 

#Dump the tidy_subset to the disk with name:tidy_subset_average:
 write.table(tidy_subset, "tidy_subset_average.txt", row.name=FALSE)
#END OF run_analysis.R

