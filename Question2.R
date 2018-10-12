setwd("/Users/willphillips/desktop/Introduction to Biocomputing/exercise6/Biocomp-Fall2018-181005-Exercise6")
dat<-read.csv("iris.csv")
#Print last two rows of last two columns in iris.csv
dat[c(149,150), c(4,5)]
#Number of observations for each species in the data set
species<-unique(dat$Species)
species #getting the names of the unique species 
dimsetosa<-dim(dat[dat$Species=="setosa", ])
dimsetosa[1]#number of observations of setosa
dimversicolor<-dim(dat[dat$Species=="versicolor", ])
dimversicolor[1]#number of observations of versicolor
dimvirginica<-dim(dat[dat$Species=="virginica", ])
dimvirginica[1]#number of observations of virginica
#Get rows with Sepal.Width>3.5
dat[dat$Sepal.Width>3.5, ]
#write the data for the species setosa to a comma delimeted file named "setosa.csv"
setosa<-dat[dat$Species=="setosa", ]
write.csv(setosa, file="setosa.csv")
#calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica<-dat[dat$Species=="virginica",3]
mean(virginica)
max(virginica)
min(virginica)
