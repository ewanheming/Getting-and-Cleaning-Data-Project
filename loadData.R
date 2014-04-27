source("./renameFields.R")
source("./readActivities.R")

loadData<-function(featuresFile, xdataFile, ydataFile, subjectsFile) {
    # Read the field names from the features file
    features<-read.table(featuresFile, header=FALSE, stringsAsFactors=FALSE)
    names(features)<-c("col", "name")
    
    # Read as a frame and convert to a table becuase of bug with fread: 
    # https://r-forge.r-project.org/tracker/?func=detail&atid=975&aid=5413&group_id=240
    data<-as.data.table(read.table(xdataFile, header=FALSE))
    setnames(data, names(data), features$name)
    
    # Select the columns containing either mean() or std()
    colNums<-c(
        grep("mean()", features$name,fixed=TRUE), 
        grep("std()", features$name,fixed=TRUE)
    )
    data<-subset(data, TRUE, select=colNums)
    
    # Rename the fields
    cleanFields<-renameFields(names(data))
    setnames(data, names(data), cleanFields)
    
    # Add the outcome variable
    data[, Activity:=readActivities(ydataFile)]
    
    # Add the subject variable
    subjects<-read.table(subjectsFile, header=FALSE)
    subjects=subjects$V1
    levels(subjects)<-factor(unique(subjects))
    data[, Subject:=subjects]
    data
}
