### This script downloads, merges and analyses data from Samsung S2 smartphone...
### ... sensors as the test subjects performed different activities
### More info on the experiment at: 
### http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### to use, simply source("run_analysis.R") in whatever directory you are using
### to load the resulting file, "output.txt", use
### read.table("output.txt", header = TRUE)
### more info on this script and data in README.md and CodeBook.md


## Download https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
## (if necessary)

dataurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipfile <- "dataset.zip"
if(file.exists(zipfile)) { print("We already have the file") } else {
  download.file(dataurl,zipfile,method="curl")
}

## unzip it
unzip(zipfile) 

################# Merge training and tests to one data set
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

# bind the rows here, to save doing everything twice later tEst, then tRain (alphabetical order)
subtX <- rbind(subteX,subtrX)
subt <- rbind(subte,subtr)
subty <- rbind(subtey,subtry)

colnames(subtX) <- vNames[,2] # set some more logical (not brilliant) column names here

# name the activities for future reference
acnames <- c("Walking", "Walking Upstairs","Walking Downstairs", "Sitting","Standing", "Lying")
names(subty) <- c("activity")
subty$description <- acnames[subty$activity]

# name this column here
names(subt) <- c("subject")

# and we have one beautiful data set!
subtX <- cbind(subt,activity = subty$activity,subtX)

## Extract only the measurements on the mean and standard deviation for each measurement. 
meanstd <- grep("mean\\(|std",colnames(subtX)) # create a vector for variables with "mean" or "std"
ourset <- c(1,2,meanstd) # don't forget the first two columns, for subject and activity!

subdf <- subset(subtX,select = ourset) # and this is our dataset with only means and stds

## Use descriptive activity names
subdf$activity <- factor(subdf$activity,labels = acnames)

## Appropriately label the data set with descriptive variable names.
colnames(subdf) <- gsub("\\(\\)","",gsub("-","_",colnames(subdf)))  # no "()" or "-": both now "_"
colnames(subdf) <- gsub("BodyBody","Body",colnames(subdf)) #just fixing that little typo

# I discovered too late that colnames() was probably a better solution to this: no time to update CodeBook.md!
# colnames(subdf) <- make.names(colnames(subdf))

# I am not going to mess around with the names any more, because it would ...
# ... break the link with the original data set. Right now, you can eyeball...
# ... the columns and find out where the data came from.

## From the data set, create a second, independent tidy data set with the... 
## ...average of each variable for each activity and each subject.
itds <- aggregate(x = subdf[3:length(colnames(subdf))], list(Subject = subdf$subject,Activity = subdf$activity),mean)
write.table(file = "output.txt", x = itds, row.name = FALSE)
