import numpy

mycsv = "testcsv.csv"

mydata = numpy.genfromtxt(mycsv, delimiter = ',', skip_header = 1)

print(mydata)

# this is a comment!
# assign columns of mydata to meaningful variable names
A = mydata[:,0]
B = mydata[:,1]

print(A)
print(B)
