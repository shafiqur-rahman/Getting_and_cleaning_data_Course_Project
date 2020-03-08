library(data.table)
library(dplyr)

#Initializing required vectors with directories and file names
dataset_directory <- "getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/"
test_file <- paste(dataset_directory,"test/X_test.txt", sep = "")
test_label_file <- paste(dataset_directory,"test/y_test.txt", sep = "")
test_subject_file <- paste(dataset_directory,"test/subject_test.txt", sep = "")
train_file <- paste(dataset_directory,"train/X_train.txt", sep = "")
train_label_file <- paste(dataset_directory,"train/y_train.txt", sep = "")
train_subject_file <- paste(dataset_directory,"train/subject_train.txt", sep = "")
feature_list <- paste(dataset_directory,"features.txt", sep = "")
activity_label_file <- paste(dataset_directory,"activity_labels.txt", sep = "")

# Getting the test data set, test activity label set and test subject set
test_data_set <- fread(test_file)
test_label_set <- fread(test_label_file)
test_subject_set <- fread(test_subject_file)

# Getting the train data set, train activity label set and train subject set
train_data_set <- fread(train_file)
train_label_set <- fread(train_label_file)
train_subject_set <- fread(train_subject_file)

# Getting the feature list which will be used to describe the variables
variables_names_data_table <- fread(feature_list)

# Creating a vector of unique variable names from the feature list
variables_names_list <- make.unique(unlist(variables_names_data_table[,2]))

# Segregating the STD and Mean variable names
var_std <- grep("std", variables_names_list, ignore.case = FALSE, perl = TRUE, value = TRUE)
var_mean <- grep("mean", variables_names_list, ignore.case = FALSE, perl = TRUE, value = TRUE)

# Getting the list of Activity Label and Description
activity_label_desc_list <- fread(activity_label_file)

# Assigning the variable names to the activity label description data frame
colnames(activity_label_desc_list) <- c("activity_label","activity_label_desc")

# Assigning the variable names to the test data set
colnames(test_data_set) <- variables_names_list

# Merging the test subject and test activity label to the test data set data frame
test_data_set$subject = test_subject_set
test_data_set$activity_label = test_label_set

# Assigning the variable names to the train data set
colnames(train_data_set) <- variables_names_list

# Merging the train subject and train activity label to the train data set data frame
train_data_set$subject = train_subject_set
train_data_set$activity_label = train_label_set

# Merging the test and train data set then getting the appropriate activity description
# by joining with the activity label description data frame and finally rearranging the
# variables of the resultant data set. 
tidy_data_set_1 <- rbind(test_data_set, train_data_set) %>% left_join(activity_label_desc_list, by = "activity_label") %>% select(subject, activity_label, activity_label_desc, var_mean, var_std)

# Creaing a second data set from the previous data set with the average of each variable
# for each activity and each subject.
tidy_data_set_2 <- tidy_data_set_1  %>% group_by(subject,activity_label, activity_label_desc) %>% summarise_all(funs(mean))

# Writing the second tidy data set to a text file
write.table(tidy_data_set_2, file = "tidy_data.txt", row.names = FALSE)