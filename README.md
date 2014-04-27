Getting and Cleaning Data Project
=================================
This project reads Smartphone Accelerometric data from the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and creates a single tidy file, called `tidy.csv`.

I have split the functions for this project into the following files:

* run_analysis.R: The main script that calls the other functions.
* loadData.R: Merges the data from each of the three files for a data set.
* readActivities: Reads the activities for a data set and turns them into factors.
* renameFields.R: Cleans up the field names.
* processData.R: Aggregates the data for each combination of Subject and Activity.

For more details about the fields and transformations, see the [Code Book](/CodeBook.md).
