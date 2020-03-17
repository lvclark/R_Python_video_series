from data_import import latitude, longitude, elevation, \
stem_height, stem_diameter, stem_density, accession, species

sh_sub = stem_height[10:30]
print(sh_sub)

sh_sub_sorted = sorted(sh_sub, reverse = True)

print(sh_sub_sorted)

print(sh_sub)

sh_sub.sort()

sh_sub = list(sh_sub)

print(sh_sub)

myindex = sh_sub.index(1.53)

print(myindex)
print(sh_sub)

myval = sh_sub.pop()
print(myval)
print(sh_sub)

mystring = accession[0]

print(mystring)

mystring = mystring.lower()

print(mystring)