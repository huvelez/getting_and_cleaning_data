# Codebook

The following dataset was obtained from:
Human Activity Recognition Using Smartphones Dataset
Version 1.0

Dataset Description
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

Data Provided:
==================================================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Citation Request
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

Field Definition
==================================================================
|Field Position| Field Name| Description
-----------|-----------|-------------
|01| subject | Subject ID
|02| tbodyacc-mean-x | Mean time for acceleration of body for X direction
|03| tbodyacc-mean-y | Mean time for acceleration of body for Y direction
|04| tbodyacc-mean-z | Mean time for acceleration of body for Z direction
|05| tbodyacc-std-x | Standard deviation of time for acceleration of body for X direction
|06| tbodyacc-std-y | Standard deviation of time for acceleration of body for Y direction
|07| tbodyacc-std-z | Standard deviation of time for acceleration of body for Z direction
|08| tgravityacc-mean-x | Mean time of acceleration of gravity for X direction
|09| tgravityacc-mean-y | Mean time of acceleration of gravity for Y direction
|10| tgravityacc-mean-z | Mean time of acceleration of gravity for Z direction
|11| tgravityacc-std-x | Standard deviation of time of acceleration of gravity for X direction
|12| tgravityacc-std-y | Standard deviation of time of acceleration of gravity for Y direction
|13| tgravityacc-std-z | Standard deviation of time of acceleration of gravity for Z direction
|14| tbodyaccjerk-mean-x | Mean time of body acceleration jerk for X direction
|15| tbodyaccjerk-mean-y | Mean time of body acceleration jerk for Y direction
|16| tbodyaccjerk-mean-z | Mean time of body acceleration jerk for Z direction
|17| tbodyaccjerk-std-x | Standard deviation of time of body acceleration jerk for X direction
|18| tbodyaccjerk-std-y | Standard deviation of time of body acceleration jerk for Y direction
|19| tbodyaccjerk-std-z | Standard deviation of time of body acceleration jerk for Z direction
|20| tbodygyro-mean-x | Mean body gyroscope measurement for X direction
|21| tbodygyro-mean-y | Mean body gyroscope measurement for Y direction
|22| tbodygyro-mean-z | Mean body gyroscope measurement for Z direction
|23| tbodygyro-std-x | Standard deviation of body gyroscope measurement for X direction
|24| tbodygyro-std-y | Standard deviation of body gyroscope measurement for Y direction
|25| tbodygyro-std-z | Standard deviation of body gyroscope measurement for Z direction
|26| tbodygyrojerk-mean-x | Mean jerk signal of body for X direction
|27| tbodygyrojerk-mean-y | Mean jerk signal of body for Y direction
|28| tbodygyrojerk-mean-z | Mean jerk signal of body for Z direction
|29| tbodygyrojerk-std-x | Standard deviation of jerk signal of body for X direction
|30| tbodygyrojerk-std-y | Standard deviation of jerk signal of body for Y direction
|31| tbodygyrojerk-std-z | Standard deviation of jerk signal of body for Z direction
|32| tbodyaccmag-mean | Mean magnitude of body Acc
|33| tbodyaccmag-std | Standard deviation of magnitude of body Acc
|34| tgravityaccmag-mean | Mean gravity acceleration magnitude
|35|| tgravityaccmag-std | Standard deviation of gravity acceleration magnitude
|36| tbodyaccjerkmag-mean | Mean magnitude of body acceleration jerk
|37| tbodyaccjerkmag-std | Standard deviation of magnitude of body acceleration jerk
|38| tbodygyromag-mean | Mean magnitude of body gyroscope measurement
|39| tbodygyromag-std | Standard deviation of magnitude of body gyroscope measurement
|40| tbodygyrojerkmag-mean | Mean magnitude of body body gyroscope jerk measurement
|41| tbodygyrojerkmag-std | Standard deviation of magnitude of body body gyroscope jerk measurement
|42| fbodyacc-mean-x | Mean frequency of body acceleration for X direction
|43| fbodyacc-mean-y | Mean frequency of body acceleration for Y direction
|44| fbodyacc-mean-z | Mean frequency of body acceleration for Z direction
|45| fbodyacc-std-x | Standard deviation of frequency of body acceleration for X direction
|46| fbodyacc-std-y | Standard deviation of frequency of body acceleration for Y direction
|47| fbodyacc-std-z | Standard deviation of frequency of body acceleration for Z direction
|48| fbodyaccjerk-mean-x | Mean frequency of body accerlation jerk for X direction
|49| fbodyaccjerk-mean-y | Mean frequency of body accerlation jerk for Y direction
|50| fbodyaccjerk-mean-z | Mean frequency of body accerlation jerk for Z direction
|51| fbodyaccjerk-std-x | Standard deviation frequency of body accerlation jerk for X direction
|52| fbodyaccjerk-std-y | Standard deviation frequency of body accerlation jerk for Y direction
|53| fbodyaccjerk-std-z | Standard deviation frequency of body accerlation jerk for Z direction
|54| fbodygyro-mean-x | Mean frequency of body gyroscope measurement for X direction
|55| fbodygyro-mean-y | Mean frequency of body gyroscope measurement for Y direction
|56| fbodygyro-mean-z | Mean frequency of body gyroscope measurement for Z direction
|57| fbodygyro-std-x | Standard deviation frequency of body gyroscope measurement for X direction
|58| fbodygyro-std-y | Standard deviation frequency of body gyroscope measurement for Y direction
|59| fbodygyro-std-z | Standard deviation frequency of body gyroscope measurement for Z direction
|60| fbodyaccmag-mean | Mean frequency of body acceleration magnitude
|61| fbodyaccmag-std | Standard deviation of frequency of body acceleration magnitude
|62| fbodybodyaccjerkmag-mean | Mean frequency of body acceleration jerk magnitude
|63| fbodybodyaccjerkmag-std | Standard deviation of frequency of body acceleration jerk magnitude
|64| fbodybodygyromag-mean | Mean frequency of magnitude of body gyroscope measurement
|65| fbodybodygyromag-std | Standard deviation of frequency of magnitude of body gyroscope measurement
|66| fbodybodygyrojerkmag-mean | Mean frequency of magnitude of body gyroscope jerk measurement
|67| fbodybodygyrojerkmag-std | Standard deviation frequency of magnitude of body gyroscope jerk measurement
|68| activities | The activity performed

