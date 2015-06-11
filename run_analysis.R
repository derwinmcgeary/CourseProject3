## Download https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
## (if necessary)
testing <- TRUE
dataurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipfile <- "dataset.zip"
if(file.exists(zipfile)) { print("We already have the file") } else {
  download.file(dataurl,zipfile,method="curl")
}

## unzip it
print("files present")
if(!testing) {unzip(zipfile) } else { print("Not unzipping on a test run: set testing <- FALSE to change")}

########################################################## Merge training and tests to one data set
subtrFile <- "UCI HAR Dataset//train//subject_train.txt"
subtrXFile <- "UCI HAR Dataset//train/X_train.txt"
subtryFile <- "UCI HAR Dataset//train/y_train.txt"
subteFile <- "UCI HAR Dataset/test/subject_test.txt"
subteXFile <- "UCI HAR Dataset/test/X_test.txt"
subteyFile <- "UCI HAR Dataset/test/y_test.txt"
variableNames <- "UCI HAR Dataset//features.txt"


subtr <- read.csv(subtrFile,sep=" ",header = FALSE)
subtrX <- read.table(subtrXFile)
subtry<- read.csv(subtryFile,sep=" ",header = FALSE)
subte <- read.csv(subteFile,sep=" ",header = FALSE)
subteX <- read.table(subteXFile)
subtey <- read.csv(subteyFile,sep=" ",header = FALSE)
vNames <- read.csv(variableNames, sep=" ", header = FALSE)

# bind the rows here, to save doing everything twice later tEst, then tRain (alphabetical)
subtX <- rbind(subteX,subtrX)
subt <- rbind(subte,subtr)
subty <- rbind(subtey,subtry)

colnames(subtX) <- vNames[,2] # set some more logical (not brilliant) column names here

# name the activities for future reference (should probably make this a factor jobby)
acnames <- c("Walking", "Walking Upstairs","Walking Downstairs", "Sitting","Standing", "Laying")
names(subty) <- c("activity")
subty$description <- acnames[subty$activity]

# name this column here
names(subt) <- c("subject")

# and we have one beautiful data set!
subtX <- cbind(subt,activity = subty$activity,subtX)

## Extract only the measurements on the mean and standard deviation for each measurement. 

## Use descriptive activity names

## Appropriately label the data set with descriptive variable names. 

## From the data set, create a second, independent tidy data set with the... 
## ...average of each variable for each activity and each subject.