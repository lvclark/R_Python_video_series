Msi_data <- read.csv("Msinensis_yield_components_cleaned.csv",
                     stringsAsFactors = FALSE)

str(Msi_data)

summary(Msi_data$Loc)
table(Msi_data$Loc)

summary(Msi_data$CmL)
table(Msi_data$CmL)
hist(Msi_data$CmL)

summary(Msi_data$Bcirc)
hist(Msi_data$Bcirc)
which(Msi_data$Bcirc > 300)
Msi_data$Entry[which(Msi_data$Bcirc > 300)]

hist(Msi_data$Rep)
table(Msi_data$Rep)

hist(Msi_data$Yield)
hist(log(Msi_data$Yield))

hist(Msi_data$CmD_1)

# some more useful commands

nrow(Msi_data)
ncol(Msi_data)

colnames(Msi_data)
colnames(Msi_data)[1] <- "Plot"

str(Msi_data)

rownames(Msi_data)

head(Msi_data)
tail(Msi_data)

Msi_data[5000:5010, 1:8]
