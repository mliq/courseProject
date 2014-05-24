## Step 1. Merges the training and the test sets to create one data set.

## Load data.table library, define an empty data.table "y".
library("data.table")
y <- data.table(matrix(NA, nrow=1, ncol=561))
x <- data.table(matrix(NA, nrow=1, ncol=561))

## Read in X_train.txt and rbind to y, then same with X_test.txt.
x<-read.table("UCI HAR Dataset/train/X_train.txt")
y<-rbind(y,x)
x<-read.table("UCI HAR Dataset/test/X_test.txt")
y<-rbind(y,x)

## Read in features.txt, using "x" as cache, then into "y" as columns. 
x<-read.table("UCI HAR Dataset/features.txt")
setnames(y,as.character(x[,2]))

## Read subject_train.txt & subject_test.txt, rbind, then cbind to y.
x<-read.table("UCI HAR Dataset/train/subject_train.txt")
x2<-read.table("UCI HAR Dataset/test/subject_test.txt")
subs<-rbind("subject",x,x2)
y<-cbind(y,subs)

## Read in activity, set colnames and erase empty first row
x<-read.table("UCI HAR Dataset/train/y_train.txt")
x2<-read.table("UCI HAR Dataset/test/y_test.txt")
actnum<-rbind("Activity",x,x2)
y<-cbind(y,actnum)
y<-y[-1,]
colnames(y)[563]<-"Activity"
colnames(y)[562]<-"Subjects"

## Step 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

## Create vector of columns which contain either "mean" or "std"	
x<-grep("mean+", colnames(y))
x2<-grep("std+", colnames(y))
z<-c(x,x2)[ order( c(seq_along(x), seq_along(x2)))] 

## Extract subset of data with only these columns, add back activity column
y2<-subset(y,select=z)
y3<-cbind(activity=y[[563]],y2)

## Step 3. Uses descriptive activity names to name the activities in the data set

library("stringr")
actnum<-y3[,1]
actlab<-str_replace_all(actnum,"1","WALKING")
actlab<-str_replace_all(actlab,"2","WALKING_UPSTAIRS")
actlab<-str_replace_all(actlab,"3","WALKING_DOWNSTAIRS")
actlab<-str_replace_all(actlab,"4","SITTING")
actlab<-str_replace_all(actlab,"5","STANDING")
actlab<-str_replace_all(actlab,"6","LAYING")
y3<-cbind("activityLabels"=actlab, y3)

## Step 4. Appropriately labels the data set with descriptive activity names. 

y4<-colnames(y3)
y4<-gsub("-","",y4)
y4<-gsub("\\()","",y4)
colnames(y3)<-y4

## Step 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

subs<-subs[-1,]
y3<-cbind(subject=subs,y3)
library("doBy")
TD<-summaryBy(.~ subject + activity, data = y3, keep.names=TRUE,
              FUN = function(x) { m = mean(x) } )
## Descriptive Activity Labels.
actnum<-TD$activity
subject<-TD$subject
TD[,subject:=NULL]
TD[,activity:=NULL]
actlab<-str_replace_all(actnum,"1","WALKING")
actlab<-str_replace_all(actlab,"2","WALKING_UPSTAIRS")
actlab<-str_replace_all(actlab,"3","WALKING_DOWNSTAIRS")
actlab<-str_replace_all(actlab,"4","SITTING")
actlab<-str_replace_all(actlab,"5","STANDING")
actlab<-str_replace_all(actlab,"6","LAYING")
TD<-cbind("subject"=subject, "activityLabels"=actlab, "activity"=actnum, TD)
## Write table to TD.txt
write.table(TD,file="TD.txt")