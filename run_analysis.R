## Librerías a utilizar
require("data.table")
require("plyr")
require("reshape2")

## 1. Merges the training and the test sets to create one data set

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")

subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")

# Merge de los datos
subjects <- rbind(subject_train, subject_test)
activities <- rbind(y_train, y_test)
data <- rbind(X_train, X_test)

# Combinación en una sola tabla
full_data <- cbind(subjects, activities, data)

## 2. Extracts only the measurements on the mean and standard deviation for each measurement

features <- read.table("UCI HAR Dataset/features.txt")

# Filtro de promedios y desviación estándar
requiredFeatures <- features[grep('-(mean|std)\\(\\)', features[, 2 ]), 2]
full_data <- full_data[, c(1, 2, requiredFeatures)]

## 3. Uses descriptive activity names to name the activities in the data set

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
full_data[, 2] <- activity_labels[full_data[,2], 2]

## 4. Appropriately labels the data set with descriptive variable names

colnames(full_data) <- c('subject', 'activity', gsub('\\-|\\(|\\)', '', as.character(requiredFeatures)))
full_data[, 2] <- as.character(full_data[, 2])

## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

melt_full_data <- melt(full_data, id = c('subject', 'activity'))
mean_data <- dcast(melt_full_data, subject + activity ~ variable, mean)

# Escritura del archivo de salida
write.table(mean_data, file="tidy_data.txt", row.names = FALSE)
