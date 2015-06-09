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

## Extract only the measurements on the mean and standard deviation for each measurement. 

## Use descriptive activity names

## Appropriately label the data set with descriptive variable names. 

## From the data set, create a second, independent tidy data set with the... 
## ...average of each variable for each activity and each subject.