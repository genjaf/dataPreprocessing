## Process dataset 'X'
train.X <- read.table("./train/X_train.txt")
test.X <- read.table("./test/X_test.txt")
X <- rbind(train.X,test.X)
rm(train.X,test.X)
features <- read.table("features.txt")
variables <- grepl("-mean()",features$V2,fixed=TRUE) | grepl("-std()",features$V2,fixed=TRUE)
names(X) <- features$V2
X <- X[,variables]
rm(features,variables)

## Process dataset 'y'
train.y <- read.table("./train/y_train.txt")
test.y <- read.table("./test/y_test.txt")
y <- rbind(train.y,test.y)
rm(train.y,test.y)
activity.labels <- read.table("activity_labels.txt")
for (i in seq_along(activity.labels$V1))
{
    y$V2[y$V1==activity.labels$V1[i]] <- as.character(activity.labels$V2[i])
}
rm(activity.labels,i)
names(y) <- c("y.code","y.label")

## Process dataset 'subject'
train.subject <- read.table("./train/subject_train.txt")
train.subject$V2 <- "trn"
test.subject <- read.table("./test/subject_test.txt")
test.subject$V2 <- "tst"
subject <- rbind(train.subject,test.subject)
rm(train.subject,test.subject)
names(subject) <- c("subject.code","data.usage")

## Combine all the datasets
combined_data <- cbind(X,y,subject)
rm(X,y,subject)

## Tidy dataset
tidy_data <- aggregate(combined_data[,1:66],list(activity=combined_data$y.label,subject=combined_data$subject.code),mean)[,c(2,1,3:68)]
write.table(tidy_data,file="tidy_data.txt",row.names=FALSE)
