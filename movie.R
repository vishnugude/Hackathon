library(recommenderlab)
data("MovieLense")
MovieLense100 <- MovieLense[1:900]
train <- MovieLense100[1:750]
#write.table(train, file="mymatrix.txt", row.names=FALSE, col.names=FALSE)
rec <- Recommender(train, method = "POPULAR")
rec

## create top-N recommendations for new users
pre <- predict(rec, MovieLense100[200:201], n = 10)
pre
as(pre, "list")

## predict ratings for new users
pre <- predict(rec, MovieLense100[200:202], type="ratings")
pre
as(pre, "matrix")

fileName <- 'C:\\Users\\vgz8b\\Downloads\\BD801EN_Introduction_R_labs_2013-Nov-11\\r_lab_files\\labs-r\\userid.txt'
textd<-readChar(fileName, file.info(fileName)$size)

## create recommendations using user ids with ids 1..10 in the
## training data
pre <- predict(rec, as.integer(textd), data = train, n = 10)
pre
as(pre, "list")

res<-pre@items[[1]]
print(res[1:10])
write.table(pre@itemLabels[res[1:10]], file="C:\\Users\\vgz8b\\Downloads\\BD801EN_Introduction_R_labs_2013-Nov-11\\r_lab_files\\labs-r\\myresults.txt", row.names=FALSE, col.names=FALSE)

print(pre@itemLabels[res[1:10]])
print(rec)
