library(recommenderlab)
library(ggplot2)
data("Jester5k")
image(Jester5k,main="Raw Ratings")
summary(getRatings(Jester5k))
plot1=qplot(getRatings(Jester5k),binwidth=1,main="Histogram of Ratings",xlab="Rating")
plot2=qplot(getRatings(normalize(Jester5k,method="Z-score")),main="Histogram of Normalized Ratings",xlab="Rating")
plot3=qplot(rowCounts(Jester5k),binwidth=10,main="Movies rated on average",xlab="# of users",ylab="# of movies rated")
plot4=qplot(colMeans(Jester5k),binwidth=1,main="Mean Rating of Movies",xlab="Rating",ylab="# of Movies")

ggsave(plot1,file="C:\\Users\\vgz8b\\Documents\\Visual Studio 2010\\Projects\\WebApplication2\\WebApplication2\\Images\\jester1.png")
ggsave(plot2,file="C:\\Users\\vgz8b\\Documents\\Visual Studio 2010\\Projects\\WebApplication2\\WebApplication2\\Images\\jester2.png")
ggsave(plot3,file="C:\\Users\\vgz8b\\Documents\\Visual Studio 2010\\Projects\\WebApplication2\\WebApplication2\\Images\\jester3.png")
ggsave(plot4,file="C:\\Users\\vgz8b\\Documents\\Visual Studio 2010\\Projects\\WebApplication2\\WebApplication2\\Images\\jester4.png")
