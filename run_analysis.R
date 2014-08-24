run_analysis <- function() {
    ## This script assumes that the data is located in a subdirectory called
    ##    "UCI HAR Dataset" from the current working directory. This is the
    ##    directory that was created after extracting the files from the url
    ##    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
    
    #########################################################################
    ## NOTE: The dataset became unaccessible from the web site after some  ##
    ##       point in the class. Maybe it got hit one too many times.      ##
    #########################################################################
    
    
    ## Read in the activity labels
    actLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")

    
    ## Read in the variable / feature names
    varLabels <- read.table("./UCI HAR Dataset/features.txt")
    

    ## Read in the test data sets and add column names
    testDatSub <- read.table("./UCI HAR Dataset/test/subject_test.txt")
    colnames(testDatSub) <- c("Subject")
    
    testDatX <- read.table("./UCI HAR Dataset/test/X_test.txt")
    colnames(testDatX) <- varLabels[, 2]
    
    testDatY <-read.table("./UCI HAR Dataset/test/y_test.txt")
    colnames(testDatY) <- c("Activity")

    
    ## Extract only the mean and std deviation columns, then
    ##     merge the test data sets into one test data set
    testDatX <- testDatX[, grep("mean|std", colnames(testDatX))]
    testDatAll <- cbind(testDatSub, testDatY, testDatX)

    
    ## Read in the training data sets and add column names
    trainDatSub <- read.table("./UCI HAR Dataset/train/subject_train.txt")
    colnames(trainDatSub) <- c("Subject")
    
    trainDatX <- read.table("./UCI HAR Dataset/train/X_train.txt")
    colnames(trainDatX) <- varLabels[, 2]
    
    trainDatY <- read.table("./UCI HAR Dataset/train/y_train.txt")
    colnames(trainDatY) <- c("Activity")

    
    ## Extract only the mean and std deviation columns, then
    ##     merge the training data sets into one training data set
    trainDatX <- trainDatX[, grep("mean|std", colnames(trainDatX))]
    trainDatAll <- cbind(trainDatSub, trainDatY, trainDatX)
    
    
    ## Merge the test and training data sets into one data set
    smartDat <- rbind(testDatAll, trainDatAll)

    ## Replace Activity number by it's label
    activityNum = 1
    for (activityName in actLabels$V2) {
        smartDat$Activity[smartDat$Activity == activityNum] <- activityName
        activityNum <- activityNum + 1
    }
    
    ## Create the tidy data set with the average of each variable for
    ##     each activity and each subject
    meltDat = melt(smartDat, c("Subject", "Activity"))
    tidyDat <- dcast(meltDat, formula = Subject + Activity ~ variable, mean)
    
    ## Write the resultant tidy data to a text file with a tab delimeter
    write.table(tidyDat, file="tidydata.txt", sep="\t", row.names=FALSE)

}