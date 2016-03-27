library(RCurl)

tidy_set <-function(){

        if (!dir.exists('data')) {
                dir.create('data')        
        }
        fileUrl <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
        download.file(fileUrl, './data/UCI_HAR_dataset.zip')
        unzip('./data/UCI_HAR_dataset.zip',exdir="./data")
        
        x_train <- read.table('./data/UCI HAR Dataset/train/X_train.txt')
        x_test <- read.table('./data/UCI HAR Dataset/test/X_test.txt')
        x_set <- rbind(x_train, x_test)
        
        subject_train <- read.table('./data/UCI HAR Dataset/train/subject_train.txt')
        subject_test <- read.table('./data/UCI HAR Dataset/test/subject_test.txt')
        subject <- rbind(subject_train, subject_test)
        
        y_train <- read.table('./data/UCI HAR Dataset/train/y_train.txt')
        y_test <- read.table('./data/UCI HAR Dataset/test/y_test.txt')
        y_set <- rbind(y_train, y_test)
        
       
        features <- read.table('./data/UCI HAR Dataset/features.txt')
        mean_sd <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
        x_set_mean_sd <- x_set[, mean_sd]
        
        names(x_set_mean_sd) <- features[mean_sd, 2]
        names(x_set_mean_sd) <- tolower(names(x_set_mean_sd)) 
        names(x_set_mean_sd) <- gsub("\\(|\\)", "", names(x_set_mean_sd))
        
        activities <- read.table('./data/UCI HAR Dataset/activity_labels.txt')
        activities[, 2] <- tolower(as.character(activities[, 2]))
        activities[, 2] <- gsub("_", "", activities[, 2])
        
        y_set[, 1] = activities[y_set[, 1], 2]
        colnames(y_set) <- 'activity'
        colnames(subject) <- 'subject'
        
        data <- cbind(subject, x_set_mean_sd, y_set)
        str(data)
        write.table(data, './data/merged_dataset.txt', row.names = F)
        
        average_data_frame <- aggregate(x=data, by=list(activities=data$activity, subj=data$subject), FUN=mean)
        average_data_frame <- average_data_frame[, !(colnames(average_data_frame) %in% c("subject", "activity"))]
        str(average_data_frame)
        write.table(average_data_frame, './data/average_data_set.txt', row.names = F)
}