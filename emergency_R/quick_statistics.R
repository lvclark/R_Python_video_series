Msi_data <- read.csv("Msinensis_yield_components_cleaned.csv",
                     stringsAsFactors = FALSE)

str(Msi_data)

hist(log(Msi_data$Yield))

# make a new variable
Msi_data$Log_Yield <- log(Msi_data$Yield)

hist(Msi_data$Log_Yield)

# statistics on a single variable
mean(Msi_data$Log_Yield, na.rm = TRUE)
median(Msi_data$Log_Yield, na.rm = TRUE)
min(Msi_data$Log_Yield, na.rm = TRUE)
max(Msi_data$Log_Yield, na.rm = TRUE)
sd(Msi_data$Log_Yield, na.rm = TRUE) ^ 2
var(Msi_data$Log_Yield, na.rm = TRUE)

# statistics on pairs of variables
hist(Msi_data$CmL)
cor(Msi_data$CmL, Msi_data$Log_Yield,
    use = "complete.obs")
cor(Msi_data$CmL, Msi_data$Yield,
    use = "complete.obs")

cor(Msi_data$CmL, Msi_data$Log_Yield,
    use = "complete.obs", method = "spearman")
cor(Msi_data$CmL, Msi_data$Yield,
    use = "complete.obs", method = "spearman")

cor(Msi_data$CmL, Msi_data$Log_Yield,
    use = "complete.obs") ^ 2 # R-squared

cov(Msi_data$CmL, Msi_data$Log_Yield,
    use = "complete.obs")

# statistical tests
cor.test(Msi_data$CmL, Msi_data$Log_Yield,
         alternative = "greater")

cor.test(Msi_data$CmL[1:100], Msi_data$Log_Yield[1:100],
         alternative = "greater")
cor.test(Msi_data$CmL[1:100], Msi_data$Log_Yield[1:100],
         alternative = "two.sided")

# t-test
t.test(Msi_data$Log_Yield[Msi_data$Loc == "NEF"],
       Msi_data$Log_Yield[Msi_data$Loc == "HU"])
