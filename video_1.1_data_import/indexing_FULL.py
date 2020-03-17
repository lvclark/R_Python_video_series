from data_import import latitude, longitude, elevation, \
stem_height, stem_diameter, stem_density, accession, species

# Indexing and slicing

#print(accession[2]) # the third accession name
#print(accession[-1]) # the last accession name

#print(accession[:20])

# Slicing
# before the colon - where to start
#print(accession[49:])
#print(accession[49:60]) # after colon - where to end
#print(accession[60])
#print(accession[:5]) # it stops just before this index

#print(accession[::2]) # skip
#print(accession[20::-1]) # print backwards

twentybackwards = accession[20::-1]
#print(twentybackwards[:5])

# get particular elements
indicesIWant = [2, 5, 21]
#print([accession[i] for i in indicesIWant])

# omit particular elements
nobs = len(accession)
#print([accession[i] for i in range(nobs) if i not in indicesIWant])

# subset by value
#print(stem_density)
stem_density_at_least_20 = [sd for sd in stem_density if sd >= 20]
#print(stem_density_at_least_20)

# subset by another list
stem_density_sinensis = [stem_density[i] for i in range(nobs) \
                         if species[i] == 'Miscanthus sinensis']
#print(stem_density_sinensis)

# first five stem heights > 2
tall_heights = [sh for sh in stem_height if sh > 2]
#print(tall_heights[:5])
print([sh for sh in stem_height if sh > 2][:5])

print([latitude[i] for i in range(nobs) if stem_height[i] > 2][:5])
print([longitude[i] for i in range(nobs) if stem_height[i] > 2][:5])