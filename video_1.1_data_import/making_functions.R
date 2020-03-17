source("data_import.R")
rm(testdata, mycsv, testvect)

source("function_defs.R")

mydata$Elevation


mydata$Elevation_ft_2 <-
  meters_to_feet(mydata$Elevation)

mydata$Elevation_ft_2



stem_volume(6, 1.3)
stem_volume(6, 0)
stem_volume(6, 130, height_mult = 1) # easier to understand
stem_volume(6, 130, 0.1, 1)

mean(mydata$Stem_density)



mean_above_x(c(3, 4, 10, 12))
mean_above_x(c(3, 4, 10, 12), x = 3)

mean_above_x(mydata$Stem_density, x = 15)
mean_above_x(mydata$Stem_density, x = 15, na.rm = FALSE)
