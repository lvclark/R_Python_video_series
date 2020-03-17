Msi_data <- read.csv("Msinensis_yield_components_cleaned.csv",
                     stringsAsFactors = FALSE)

str(Msi_data)

Msi_data$Log_Yield <- log(Msi_data$Yield)

table(Msi_data$Rep)
Msi_data$Rep <- as.factor(Msi_data$Rep)

# lm function
lm1 <- lm(Log_Yield ~ CmL, data = Msi_data)
lm1
summary(lm1)
hist(resid(lm1))

# adding terms to model
lm2 <- lm(Log_Yield ~ CmL + Ccirc, data = Msi_data)
summary(lm2)
hist(resid(lm2), breaks = 50)
hist(Msi_data$Ccirc, breaks = 50)

lm3 <- lm(Log_Yield ~ CmL + log(Ccirc), data = Msi_data)
summary(lm3)
hist(resid(lm3), breaks = 50)

# interaction effects
lm4 <- lm(Log_Yield ~ CmL * log(Ccirc), data = Msi_data)
summary(lm4)

lm5 <- lm(Log_Yield ~ CmL : log(Ccirc), data = Msi_data)
summary(lm5)

cor(Msi_data$Log_Yield,
    Msi_data$CmL * log(Msi_data$Ccirc),
    use = "complete.obs") ^ 2

# categorical variables
lm6 <- lm(Log_Yield ~ Loc, data = Msi_data)
table(Msi_data$Loc)
summary(lm6)

lm7 <- lm(Log_Yield ~ Loc * CmL + log(Ccirc),
          data = Msi_data)
summary(lm7)

lm8 <- lm(Log_Yield ~ Loc * CmL + Loc * log(Ccirc),
          data = Msi_data)
summary(lm8)

lm8 <- lm(Log_Yield ~ Loc + CmL + log(Ccirc) +
            Loc:CmL + Loc:log(Ccirc),
          data = Msi_data)
summary(lm8)

# ANOVA
aov(lm8)
summary(aov(lm8))

# random effects
library(lme4)

lm9 <- lmer(Log_Yield ~ (1|Loc), data = Msi_data)
summary(lm9)

lm10 <- lmer(Log_Yield ~ (1|Loc) + (1|Loc:Rep),
            data = Msi_data)
summary(lm10)

lm11 <- lmer(Log_Yield ~ (1|Loc) + (1|Loc:Rep) + (1|Entry) +
               (1|Loc:Entry) + ,
             data = Msi_data)
summary(lm11)
