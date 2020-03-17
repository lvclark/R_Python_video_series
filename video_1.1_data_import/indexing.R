#source("data_import.R") # run this whole script

# import my dataset

mycsv <- "Russian_Miscanthus.csv"
mydata <- read.csv(mycsv, stringsAsFactors = FALSE)
colnames(mydata) <- c("Accession", "Species",
                      "Latitude", "Longitude",
                      "Elevation", "Stem_height",
                      "Stem_diameter", "Stem_density")

# getting single values
mydata$Accession[3]

nobs <- length(mydata$Accession)

# get the last value
mydata$Accession[nobs]
mydata$Accession[nobs-1]

# get a series of values
is.vector(1:5)
mydata$Accession[1:5]
mydata$Accession[5:1]
mydata$Accession[nobs:1]

mydata$Accession[seq(1, nobs, by = 2)]

# a set of specific values
indicesIWant <- c(5, 7, 21)
mydata$Accession[indicesIWant]

# everything except for certain indices
-indicesIWant
mydata$Accession[-indicesIWant]

# index by value (Boolean indexing)
mydata$Stem_density[which(mydata$Stem_density >= 20)]

# index by another vector (also Boolean)
mydata$Stem_density[mydata$Species == "Miscanthus sinensis"]

# first five stem height greater than 2
rowsStemHeight2 <- which(mydata$Stem_height > 2)[1:5]

mydata$Stem_height[rowsStemHeight2]
mydata$Latitude[rowsStemHeight2]
mydata$Longitude[rowsStemHeight2]
