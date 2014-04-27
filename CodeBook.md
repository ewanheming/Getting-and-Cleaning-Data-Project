# Code Book

## Fields 

## Transformations
I performed the following transformations on the files

* Merged the x, y, and activity files into a single table.
* Excluded all x variables apart from the mean and standard deviation fields.
* Aggregated the data for each combination of Subject and Activity.
* Cleaned up the field names:
  * Turned Acc, Gyro, and Mag into full names.
  * Turned the initial `t` and `f` into `Time` and `Frequency`.
  * Renamed `-std()` and `-mean()` to `Std` and `Mean`.
  * Removed the dash before each `X`, `Y`, and `Z` label.
