setwd('.')
library(dplyr)
test_subjects_file <- './data/test/subject_test.txt';
test_activity_measure_file <- './data/test/X_test.txt';
test_activity_label_file <- './data/test/y_test.txt';

train_subjects_file <- './data/train/subject_train.txt';
train_activity_measure_file <- './data/train/X_train.txt';
train_activity_label_file <- './data/train/y_train.txt';


test_subjects <- read.table(test_subjects_file, col.names = c('subject'))
test_activity_label <- read.table(test_activity_label_file, col.names = c('activity_id'))
test_activity_measure <- read.table(test_activity_measure_file, sep = '\t', col.names = c('activity_measure'))

train_subjects <- read.table(train_subjects_file, col.names = c('subject'))
train_activity_label <- read.table(train_activity_label_file, col.names = c('activity_id'))
train_activity_measure <- read.table(train_activity_measure_file, sep = '\t', col.names = c('activity_measure'))

test_set <- data.frame(
    subject = test_subjects, 
    activity_id = test_activity_label,
    group = "test",
    activity_measure =  test_activity_measure
);


train_set <- data.frame(
    subject = train_subjects, 
    activity_id = train_activity_label,
    group = "train",
    activity_measure =  train_activity_measure
);

data_set <- rbind(test_set, train_set)
data_set <- mutate(data_set, activity_name = factor(activity_id, labels = c('WALKING','WALKING_UPSTAIRS','WALKING_DOWNSTAIRS','SITTING','STANDING','LAYING')) )


