# This function cleans up the field names
renameFields<-function(fieldNames) {
    # Use slightly more meaningful labels
    fieldNames<-sub("Acc", "Acceleration", fieldNames)
    fieldNames<-sub("Gyro", "Gyroscope", fieldNames)
    fieldNames<-sub("Mag", "Magnitude", fieldNames)
    
    # Time or Frequency
    fieldNames<-sub("^t", "Time", fieldNames)
    fieldNames<-sub("^f", "Frequency", fieldNames)
    
    # SD or Mean
    fieldNames<-sub("-std()", "Std", fieldNames, fixed=TRUE)
    fieldNames<-sub("-mean()", "Mean", fieldNames, fixed=TRUE)
    
    # Dimension
    fieldNames<-sub("-X", "X", fieldNames)
    fieldNames<-sub("-Y", "Y", fieldNames)
    fieldNames<-sub("-Z", "Z", fieldNames)
    
    fieldNames
}
