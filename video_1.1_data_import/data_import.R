# import my dataset

mycsv <- "Russian_Miscanthus.csv"

mydata <- read.csv(mycsv, stringsAsFactors = FALSE)

#1+1 # demo of Ctrl+Enter

str(mydata) # examine data structure

# exercise with a dummy dataset
testdata <- read.csv("testcsv.csv",
                     stringsAsFactors = FALSE)
str(testdata)

# extracting individual columns
mydata$Species # individual columns are vectors
is.vector(mydata$Species)
is.vector(mycsv)

mydata$Coll..No..Accession.ID[15]
mydata$Species[15]
mydata$Lat[15]
mydata$Long[15]

mydata[15,]

# creating a vector
testvect <- c(2, 3, 4)
testvect

# fixing column names
colnames(mydata)
colnames(mydata) <- c("Accession", "Species",
                      "Latitude", "Longitude",
                      "Elevation", "Stem_height",
                      "Stem_diameter", "Stem_density")

mydata$Accession[15]
mydata$Species[15]
mydata$Lat[15]
mydata$Long[15]

# doing arithmetic and adding columns
mydata$Stem_height_cm <- mydata$Stem_height * 100

mydata$Elevation_ft <- mydata$Elevation * 3.28

str(mydata)
