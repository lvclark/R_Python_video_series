import numpy
import csv

mycsv = "Russian_Miscanthus.csv"

mydata = numpy.genfromtxt(mycsv, delimiter = ',', skip_header = 1,
                 usecols = (2, 3, 4, 5, 6, 7))

#print(mydata)

# this is a comment!
# assign columns of mydata to meaningful variable names
latitude = mydata[:,0]
longitude = mydata[:,1]
elevation = mydata[:,2]
stem_height = mydata[:,3]
stem_diameter = mydata[:,4]
stem_density = mydata[:,5]

# importing text columns
accession = []
species = []
with open(mycsv, newline = '', mode = 'r') as mycon:
    myreader = csv.reader(mycon)
    header = next(myreader)
    for row in myreader:
        accession.append(row[0])
        species.append(row[1])
        
print(accession[14])
print(species[14])
print(latitude[14])
print(longitude[14])

stem_height_cm = stem_height * 100
print(stem_height[:20])    # print out first 20 to check
print(stem_height_cm[:20])

elevation_ft = elevation * 3.28
print(elevation[:20])    # print out first 20 to check
print(elevation_ft[:20])
