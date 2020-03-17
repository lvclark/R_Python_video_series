from data_import import latitude, longitude, elevation, \
stem_height, stem_diameter, stem_density, accession, species

from function_defs import meters_to_feet, stem_volume, mean_above_x

ft_per_m = 3.28084

#elev1 = elevation[0] * ft_per_m

#print(elev1)

#elev_ft = elevation * ft_per_m

#print(elev_ft)

elev1 = meters_to_feet(elevation[0])
elev_ft = meters_to_feet(elevation)

print(elev1)
print(elev_ft)

test = stem_volume(6, 1.3)
print(test)

#test = stem_volume(6, 0)
#print(test)

test2 = stem_volume(6, 130, height_mult = 1)
print(test2)



print(mean_above_x([3, 4, 10, 12], x = 9))
print(mean_above_x(stem_density, na_rm = False))
