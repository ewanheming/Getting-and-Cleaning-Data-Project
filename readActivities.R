readActivities<-function(activitiesFilename) {
    # Read the outcome variable
    activities<-read.table(activitiesFilename, header=FALSE)
    
    # Label the outcomes so they're easier to read
    activities<-sapply(activities$V1, switch, "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
    
    # Turn outcomes into factors
    activityTypes<-c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
    levels(activities)<-factor(activityTypes, labels=activityTypes)
    
    activities
}