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

1 Subject  Integer from 1:6 identifying a human subject
2 Activity Which activity was being performed. Values are:
    "Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Lying"

3 tBodyAcc_mean_X mean of X axis body acceleration
4 tBodyAcc_mean_Y mean of Y axis body acceleration
5 tBodyAcc_mean_Z mean of Z axis body acceleration
6 tBodyAcc_std_X mean of X axis body acceleration
7 tBodyAcc_std_Y mean of Y axis body acceleration
8 tBodyAcc_std_Z mean of Z axis body acceleration
9 tGravityAcc_mean_X mean of X axis gravitational acceleration
10 tGravityAcc_mean_Y mean of Y axis gravitational acceleration
11 tGravityAcc_mean_Z mean of Z axis gravitational acceleration
12 tGravityAcc_std_X mean of X axis gravitational acceleration
13 tGravityAcc_std_Y mean of Y axis gravitational acceleration
14 tGravityAcc_std_Z mean of Z axis gravitational acceleration
15 tBodyAccJerk_mean_X mean of X axis
16 tBodyAccJerk_mean_Y mean of Y axis
17 tBodyAccJerk_mean_Z mean of Z axis
18 tBodyAccJerk_std_X mean of X axis
19 tBodyAccJerk_std_Y mean of Y axis
20 tBodyAccJerk_std_Z mean of Z axis
21 tBodyGyro_mean_X mean of X axis
22 tBodyGyro_mean_Y mean of Y axis
23 tBodyGyro_mean_Z mean of Z axis
24 tBodyGyro_std_X mean of X axis
25 tBodyGyro_std_Y mean of Y axis
26 tBodyGyro_std_Z mean of Z axis
27 tBodyGyroJerk_mean_X mean of X axis
28 tBodyGyroJerk_mean_Y mean of Y axis
29 tBodyGyroJerk_mean_Z mean of Z axis
30 tBodyGyroJerk_std_X mean of X axis
31 tBodyGyroJerk_std_Y mean of Y axis
32 tBodyGyroJerk_std_Z mean of Z axis
33 tBodyAccMag_mean mean of body acceleration
34 tBodyAccMag_std mean of body acceleration
35 tGravityAccMag_mean mean of gravitational acceleration
36 tGravityAccMag_std mean of std of gravitational acceleration
37 tBodyAccJerkMag_mean mean of 
38 tBodyAccJerkMag_std mean of 
39 tBodyGyroMag_mean mean of 
40 tBodyGyroMag_std mean of 
41 tBodyGyroJerkMag_mean mean of 
42 tBodyGyroJerkMag_std mean of 
43 fBodyAcc_mean_X mean of X axis body acceleration
44 fBodyAcc_mean_Y mean of Y axis body acceleration
45 fBodyAcc_mean_Z mean of Z axis body acceleration
46 fBodyAcc_std_X mean of X axis body acceleration
47 fBodyAcc_std_Y mean of Y axis body acceleration
48 fBodyAcc_std_Z mean of Z axis body acceleration
49 fBodyAcc_meanFreq_X mean of X axis body acceleration
50 fBodyAcc_meanFreq_Y mean of Y axis body acceleration
51 fBodyAcc_meanFreq_Z mean of Z axis body acceleration
52 fBodyAccJerk_mean_X mean of X axis
53 fBodyAccJerk_mean_Y mean of Y axis
54 fBodyAccJerk_mean_Z mean of Z axis
55 fBodyAccJerk_std_X mean of X axis
56 fBodyAccJerk_std_Y mean of Y axis
57 fBodyAccJerk_std_Z mean of Z axis
58 fBodyAccJerk_meanFreq_X mean of X axis
59 fBodyAccJerk_meanFreq_Y mean of Y axis
60 fBodyAccJerk_meanFreq_Z mean of Z axis
61 fBodyGyro_mean_X mean of X axis
62 fBodyGyro_mean_Y mean of Y axis
63 fBodyGyro_mean_Z mean of Z axis
64 fBodyGyro_std_X mean of X axis
65 fBodyGyro_std_Y mean of Y axis
66 fBodyGyro_std_Z mean of Z axis
67 fBodyGyro_meanFreq_X mean of X axis
68 fBodyGyro_meanFreq_Y mean of Y axis
69 fBodyGyro_meanFreq_Z mean of Z axis
70 fBodyAccMag_mean mean of 
71 fBodyAccMag_std mean of 
72 fBodyAccMag_meanFreq mean of 
73 fBodyBodyAccJerkMag_mean mean of 
74 fBodyBodyAccJerkMag_std mean of 
75 fBodyBodyAccJerkMag_meanFreq mean of 
76 fBodyBodyGyroMag_mean mean of 
77 fBodyBodyGyroMag_std mean of 
78 fBodyBodyGyroMag_meanFreq mean of 
79 fBodyBodyGyroJerkMag_mean mean of 
80 fBodyBodyGyroJerkMag_std mean of 
81 fBodyBodyGyroJerkMag_meanFreq mean of 
