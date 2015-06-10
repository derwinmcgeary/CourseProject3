## Download https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
## (if necessary)
dataurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipfile <- "dataset.zip"
if(file.exists(zipfile)) { print("We already have the file") } else {
  download.file(dataurl,zipfile,method="curl")
}

## unzip it
print("files present")
print(unzip(zipfile, list=TRUE))
unzip(zipfile)

## Merge training and tests to one data set
subtrFile <- "UCI HAR Dataset//train//subject_train.txt"
subtrXFile <- "UCI HAR Dataset//train/X_train.txt"
subtryFile <- "UCI HAR Dataset//train/y_train.txt"
subteFile <- "UCI HAR Dataset/test/subject_test.txt"
subteXFile <- "UCI HAR Dataset/test/X_test.txt"
subteyFile <- "UCI HAR Dataset/test/y_test.txt"
variableNames <- "UCI HAR Dataset//features.txt"


subtr <- read.csv(subtrFile,sep=" ",header = FALSE)
subtrX <- read.csv(subtrXFile,sep=" ",header = FALSE)
subtry<- read.csv(subtryFile,sep=" ",header = FALSE)
subte <- read.csv(subteFile,sep=" ",header = FALSE)
subteX <- read.csv(subteXFile,sep=" ",header = FALSE)
subtey <- read.csv(subteyFile,sep=" ",header = FALSE)
vNames <- read.csv(variableNames, sep=" ", header = FALSE)

colnames(subtrX) <- vNames[,2] # set some more logical (not brilliant) column names here
colnames(subteX) <- vNames[,2] # it'll do for now

acnames <- c("Walking", "Walking Upstairs","Walking Downstairs", "Sitting","Standing", "Laying")
subtey$activity <- acnames[subtey$V1]
subtry$activity <- acnames[subtry$V1]

subtrX$subject <- subtr # THIS DOESN'T WORK FOR SOME REASON
subtrX$activity <- subtry #I NEED A BETTER WAY TO MERGE THESE DATA SETS

subteX$subject <-subte
subteX$activity <- subtey


## Extract only the measurements on the mean and standard deviation for each measurement. 

## Use descriptive activity names

## Appropriately label the data set with descriptive variable names. 

## From the data set, create a second, independent tidy data set with the... 
## ...average of each variable for each activity and each subject.