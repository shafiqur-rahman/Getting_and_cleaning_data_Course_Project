# Getting_and_cleaning_data_Course_Project
This is the week 4 course project for the course "Getting and Cleaning Data"

This repository contains the followings:

1. run_analysis.R - The R script which will run on the raw data and produce an output in comma separated value file format named tidy_data.csv
2. Codebook.md - Description of the features used in this analysis
4. tidy_data.csv - The output file of the analysis of the raw data.

Below is the brief description of each file:

run_analysis.R
----------------

It is an R script file. This file do the followings
 
1. Get the test and training data in separate data frames
2. Merge the test and training subject and activity label to the repective data frames
3. Name the variables of the data frames using the feature.txt file
4. Merge the test and training data frames in to one and get the activity label description by joining with the activity label description data frames
5. Create a second data frame from the previous data set with the average of each variable for each activity and each subject.
6. Write the output to tidy_data.txt file.
 
In order to work this script properly the raw data should be extracted into the directory getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/.
For example in a windows based machine, the extracted files should be in the C:/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/. In this case your working directory should be
set in setwd("C:/")

Codebook.md
----------------

The Codebook.md describes the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.


tidy_data.txt
----------------

This file contains the average of each variable for each activity and each subject. This file contains 182 observations of 82 variables.
