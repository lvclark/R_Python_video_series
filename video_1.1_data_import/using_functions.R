source("data_import.R")
rm(testdata, mycsv, testvect)

sh_sub <- mydata$Stem_height[11:30]

sort(sh_sub)

sh_sub

sh_sub_sorted <- sort(sh_sub)

sort(sh_sub, decreasing = TRUE)

sort(x = sh_sub, decreasing = TRUE)

sort(sh_sub, TRUE)

sort(decreasing = TRUE, x = sh_sub)

class(mydata)
summary(mydata)

is.vector(sh_sub)
summary(sh_sub)

summary(digits = 2, object = sh_sub)

summary(digits = 2, object = mydata)
