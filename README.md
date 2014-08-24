run_analysis
============

<h1>Getting and Cleaning Data Course -- Course Project</h1>


<body>The files are as follows:

<pre>
   readme.md      - This file
   run_analysis.R - R Script File created with RStudio Version 0.98.976
   tidydata.txt   - Output data file</pre>
   
<p>Original data files are located in the folder "UCI HAR Dataset", and the data itself was obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. However, the data may or may not be obtained from the same web site, as the site now gives a 403 Access error as of this writing. Original data descriptors are found in the features.txt and features_info.txt files in the data directory.</p>


<h2>R Script Processing</h2>

<p>The R script reads in the activity labels, variable labels, test data, and training data from the subdirectory called "UCI HAR Dataset". The test data and the training data are reloaded after extracting only the columns containing "mean" and "std" in the column names. Then, each data set is combined with the Subject and Activity files, creating one large test and one large training datasets. The two sets are then merged together. The Activity number is replaced with a descriptive field, based on the data from the Activity file. The data is then melted and casted to create a tidy data set.</p>
