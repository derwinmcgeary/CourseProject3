---
title: "README.md"
author: "Derwin McGeary"
date: "12.06.2015"
output: html_document
---
# Introduction

The script "run_analysis.R" downloads a set of data from smartphone motion sensors from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

It then unzips the resulting file, and pieces the files back into one data frame.

This is then aggregated and the mean values for each subject and activity combination are written to the file "output.txt".

This may be read back into R using: read.table("output.txt", header = TRUE) (see: https://class.coursera.org/getdata-015/forum/thread?thread_id=26)

# The original data
There are separate files for the measurements, the subjects, the activities performed, and the column names for the measurements and the encoding for the activities.

The data has also been divided into 'test' and 'train' subgroups, which we wish to disregard.


We also wish to discard the Inertial Sensors data, which will be ignored henceforth.

# Operations performed

The script starts by binding together the 'test' and 'train' files for subjects, activities, and measurements

For convenience we add column names for the measurement data from the file "features.txt" at this point. We also add headers for the 'subject' and 'activity' tables.

The script then uses a column bind (cbind()) to match subject|activity|measurements. This is the aggregate object with all data.

Stage 2 is to use grep() to select only those columns with mean or standard deviation data (encoded as "mean", or "std" in the column headers. We include only mean() columns and discard meanFreq as this is not a mean of a measurement.

At this stage, we remove the problematic characters "-", "(", and ")" from the column headers, and convert the "activity" column to a factor with descriptive activity names.

Finally, we aggregate() the resulting, smaller, dataset by subject and activity.

This results in a wide tidy data file, with one row showing all means and 
standard deviations for each subject-activity combination.