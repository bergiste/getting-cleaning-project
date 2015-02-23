---
title: "CodeBook for assignment"
---


Raw data is found under "data" directory

Run "run_analysis.R" to pull data from both the test and training set and create one data frame that contains all of the data. The data frame is created with the following columns

- subject: the id number of the subject(person) for this experiment
- activity_id: The id of the activity (1-6)
- activity_name: the corresponding activity name for each of the activity_id's
- group: the 2 group (test or train)
- activity_measure: the measurement of the activity 

Upon successful execution of the R code, a "summary.txt" file is created with summary averages for each subject and each activity
