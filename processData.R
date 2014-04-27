# This function aggregates the data for each combination of Subject and Activity
processData<-function(data) {
    # Create an index containing each combination of subject and activity
    idx<-list(Subject=factor(data$Subject),Activity=factor(data$Activity))
    
    # Remove the subject and activity columns from the data set so they aren't averaged
    data<-subset(data, TRUE, select=1:(ncol(data)-2))
    
    # Aggregate the data based on the index
    aggregate(data, by=idx, FUN=mean)
}