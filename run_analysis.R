# The purpose of this method is to demonstrate your ability to collect, work with, and clean a data set. 
# The goal is to prepare tidy data that can be used for later analysis. 
tidy_set <-function(){

        # Create Data Directory if the Directory doesn't exist
        if (!dir.exists('data')) {
                dir.create('data')        
        }
        #Download and Unzip the file into the data directirt
        fileUrl <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
        download.file(fileUrl, './data/UCI_HAR_dataset.zip')
        unzip('./data/UCI_HAR_dataset.zip',exdir="./data")
        
        #Merge the first  x_sets into one for train and test
        x_train <- read.table('./data/UCI HAR Dataset/train/X_train.txt')
        x_test <- read.table('./data/UCI HAR Dataset/test/X_test.txt')
        x_set <- rbind(x_train, x_test)
        
        #Merge the first  x_sets into one for train and test
        subject_train <- read.table('./data/UCI HAR Dataset/train/subject_train.txt')
        subject_test <- read.table('./data/UCI HAR Dataset/test/subject_test.txt')
        subject_set <- rbind(subject_train, subject_test)
        
        #Merge the y_set of data for traing and test
        y_train <- read.table('./data/UCI HAR Dataset/train/y_train.txt')
        y_test <- read.table('./data/UCI HAR Dataset/test/y_test.txt')
        y_set <- rbind(y_train, y_test)
        
       
        # Get only the features for mean and standard dev.  
        features <- read.table('./data/UCI HAR Dataset/features.txt')
        mean_sd <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
        x_set_mean_sd <- x_set[, mean_sd]
        
        
        # Use activity names that are descriptive as requested
        names(x_set_mean_sd) <- features[mean_sd, 2]
        names(x_set_mean_sd) <- tolower(names(x_set_mean_sd)) 
        names(x_set_mean_sd) <- gsub("\\(|\\)", "", names(x_set_mean_sd))
        activities <- read.table('./data/UCI HAR Dataset/activity_labels.txt')
        activities[, 2] <- tolower(as.character(activities[, 2]))
        activities[, 2] <- gsub("_", "", activities[, 2])
        y_set[, 1] = activities[y_set[, 1], 2]
        colnames(y_set) <- 'activity'
        colnames(subject_set) <- 'subject'
        
        # Add the labels
        data <- cbind(subject_set, x_set_mean_sd, y_set)
        str(data)
        write.table(data, './data/merged_dataset.txt', row.names = F)
        
        average_data_frame <- aggregate(x=data, by=list(activities=data$activity, subj=data$subject), FUN=mean)
        average_data_frame <- average_data_frame[, !(colnames(average_data_frame) %in% c("subject", "activity"))]

        #wite the file
        write.table(average_data_frame, './data/average_data_set.txt', row.names = F)
}
