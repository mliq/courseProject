### Introduction
	
	This script, "run_analysis.R", accomplishes the tasks laid out under the Course Project instructions in Coursera course getdata-003 found at: [https://class.coursera.org/getdata-003/human_grading/view/courses/972136/assessments/3/submissions]
	It produces a dataset called "TD.txt".

### Requirements
	
	1. The data set found at [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip] must be unzipped in your R working directory prior to running the script.
	2. The following R packages must be installed prior to running the script, which will call them as needed: 
		-data.table
		-stringr
		-doBy

### Overview of tasks accomplished by script.

 	1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement. 
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive activity names. 
    5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 