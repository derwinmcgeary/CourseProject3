---
title: Code Book
author: Derwin McGeary
date: 12.06.2015
output: html_document
---

All measurments are means taken for the subject/activity pair for each set of
measurements in the original dataset. Measurements in the original dataset 
were normalised from -1 to 1.

"Body" measurements refer to signals which change relatively frequently, and measurements
which changed more slowly were classified as "Gravity".

Measurements are given as X, Y, Z components, plus an overall magnitude, "Mag" and means (mean) and standard deviation (std) are given for both.

Measurements starting with "t" are time domain, "f" signifies frequency domain

1 Subject  Integer from 1:6 identifying a human subject
2 Activity Which activity was being performed. Values are:
    "Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Lying"

3 tBodyAcc_mean_X mean of X axis body acceleration
4 tBodyAcc_mean_Y mean of Y axis body acceleration
5 tBodyAcc_mean_Z mean of Z axis body acceleration
6 tBodyAcc_std_X mean of standard deviation of X axis body acceleration
7 tBodyAcc_std_Y mean of standard deviation of Y axis body acceleration
8 tBodyAcc_std_Z mean of standard deviation of Z axis body acceleration
9 tGravityAcc_mean_X mean of X axis gravitational acceleration
10 tGravityAcc_mean_Y mean of Y axis gravitational acceleration
11 tGravityAcc_mean_Z mean of Z axis gravitational acceleration
12 tGravityAcc_std_X mean of standard deviation of X axis gravitational acceleration
13 tGravityAcc_std_Y mean of standard deviation of Y axis gravitational acceleration
14 tGravityAcc_std_Z mean of standard deviation of Z axis gravitational acceleration
15 tBodyAccJerk_mean_X mean of X axis jerk acceleration
16 tBodyAccJerk_mean_Y mean of Y axis jerk acceleration
17 tBodyAccJerk_mean_Z mean of Z axis jerk acceleration
18 tBodyAccJerk_std_X mean of standard deviation of X axis jerk acceleration
19 tBodyAccJerk_std_Y mean of standard deviation of Y axis jerk acceleration
20 tBodyAccJerk_std_Z mean of standard deviation of Z axis jerk acceleration
21 tBodyGyro_mean_X mean of X axis body angular acceleration
22 tBodyGyro_mean_Y mean of Y axis body angular acceleration
23 tBodyGyro_mean_Z mean of Z axis body angular acceleration
24 tBodyGyro_std_X mean of standard deviation of X axis body angular acceleration
25 tBodyGyro_std_Y mean of standard deviation of Y axis body angular acceleration
26 tBodyGyro_std_Z mean of standard deviation of Z axis body angular acceleration
27 tBodyGyroJerk_mean_X mean of X axis jerk acceleration
28 tBodyGyroJerk_mean_Y mean of Y axis jerk acceleration
29 tBodyGyroJerk_mean_Z mean of Z axis jerk acceleration
30 tBodyGyroJerk_std_X mean of standard deviation of X axis jerk acceleration
31 tBodyGyroJerk_std_Y mean of standard deviation of Y axis jerk acceleration
32 tBodyGyroJerk_std_Z mean of standard deviation of Z axis jerk acceleration
33 tBodyAccMag_mean mean of body acceleration
34 tBodyAccMag_std mean of standard deviation of body acceleration
35 tGravityAccMag_mean mean of gravitational acceleration
36 tGravityAccMag_std mean of standard deviation of gravitational acceleration
37 tBodyAccJerkMag_mean mean of jerk acceleration
38 tBodyAccJerkMag_std mean of standard deviation of jerk acceleration
39 tBodyGyroMag_mean mean of body angular acceleration
40 tBodyGyroMag_std mean of standard deviation of body angular acceleration
41 tBodyGyroJerkMag_mean mean of body angular jerk acceleration
42 tBodyGyroJerkMag_std mean of standard deviation of body angular jerk acceleration
43 fBodyAcc_mean_X mean of X axis body acceleration
44 fBodyAcc_mean_Y mean of Y axis body acceleration
45 fBodyAcc_mean_Z mean of Z axis body acceleration
46 fBodyAcc_std_X mean of standard deviation of X axis body acceleration
47 fBodyAcc_std_Y mean of standard deviation of Y axis body acceleration
48 fBodyAcc_std_Z mean of standard deviation of Z axis body acceleration
49 fBodyAccJerk_mean_X mean of X axis jerk acceleration
50 fBodyAccJerk_mean_Y mean of Y axis jerk acceleration
51 fBodyAccJerk_mean_Z mean of Z axis jerk acceleration
52 fBodyAccJerk_std_X mean of standard deviation of X axis jerk acceleration
53 fBodyAccJerk_std_Y mean of standard deviation of Y axis jerk acceleration
54 fBodyAccJerk_std_Z mean of standard deviation of Z axis jerk acceleration
55 fBodyGyro_mean_X mean of X axis body angular acceleration
56 fBodyGyro_mean_Y mean of Y axis body angular acceleration
57 fBodyGyro_mean_Z mean of Z axis body angular acceleration
58 fBodyGyro_std_X mean of standard deviation of X axis body angular acceleration
59 fBodyGyro_std_Y mean of standard deviation of Y axis body angular acceleration
60 fBodyGyro_std_Z mean of standard deviation of Z axis body angular acceleration
61 fBodyAccMag_mean mean of body acceleration
62 fBodyAccMag_std mean of standard deviation of body acceleration
63 fBodyAccJerkMag_mean mean of body jerk acceleration
64 fBodyAccJerkMag_std mean of standard deviation of body jerk acceleration
65 fBodyGyroMag_mean mean of body angular acceleration
66 fBodyGyroMag_std mean of standard deviation of body angular acceleration
67 fBodyGyroJerkMag_mean mean of body angular jerk acceleration
68 fBodyGyroJerkMag_std mean of standard deviation of body angular jerk acceleration
