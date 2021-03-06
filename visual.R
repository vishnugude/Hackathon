library(recommenderlab)
library(ggplot2)
data("MovieLense")
image(MovieLense,main="Raw Ratings")
summary(getRatings(MovieLense))
plot1=qplot(getRatings(MovieLense),binwidth=1,main="Histogram of Ratings",xlab="Rating")
plot2=qplot(getRatings(normalize(MovieLense,method="Z-score")),main="Histogram of Normalized Ratings",xlab="Rating")
plot3=qplot(rowCounts(MovieLense),binwidth=10,main="Movies rated on average",xlab="# of users",ylab="# of movies rated")
plot4=qplot(colMeans(MovieLense),binwidth=1,main="Mean Rating of Movies",xlab="Rating",ylab="# of Movies")

ggsave(plot1,file="C:\\Users\\vgz8b\\Documents\\Visual Studio 2010\\Projects\\WebApplication2\\WebApplication2\\Images\\plot1.png")
ggsave(plot2,file="C:\\Users\\vgz8b\\Documents\\Visual Studio 2010\\Projects\\WebApplication2\\WebApplication2\\Images\\plot2.png")
ggsave(plot3,file="C:\\Users\\vgz8b\\Documents\\Visual Studio 2010\\Projects\\WebApplication2\\WebApplication2\\Images\\plot3.png")
ggsave(plot4,file="C:\\Users\\vgz8b\\Documents\\Visual Studio 2010\\Projects\\WebApplication2\\WebApplication2\\Images\\plot4.png")