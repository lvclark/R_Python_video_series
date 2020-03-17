#install.packages("ggplot2")
#install.packages("viridis")

library(ggplot2)
library(viridis)

Msi_data <- read.csv("Msinensis_yield_components_cleaned.csv",
                     stringsAsFactors = FALSE)

str(Msi_data)

Msi_data$CmD_1

# simple scatter plot
ggplot(Msi_data, aes(x = CmD_1, y = Height)) +
  geom_point()

ggplot(Msi_data, aes(x = CmD_1, y = Yield)) +
  geom_point() +
  coord_trans(y = "log")

# adding a trendline
ggplot(Msi_data, aes(x = CmD_1, y = Height)) +
  geom_point() +
  geom_smooth(method = "lm")

ggplot(Msi_data, aes(x = CmD_1, y = Yield)) +
  geom_point() +
  geom_density2d() +
  geom_smooth(method = "lm", color = "red") +
  scale_y_log10()

# categorical variables
table(Msi_data$Loc)

ggplot(Msi_data, aes(x = CmD_1, y = Yield, color = Loc)) +
  geom_point() +
  scale_y_log10()

ggplot(Msi_data, aes(y = Yield, x = Loc)) +
  geom_boxplot() +
  scale_y_log10()

ggplot(Msi_data, aes(x = CmD_1, y = Yield)) +
  geom_point() +
  geom_smooth(method = "lm", color = "red") +
  scale_y_log10() +
  facet_wrap(~ Loc)

ggplot(Msi_data, aes(x = CmD_1, y = Yield)) +
  geom_point() +
  geom_smooth(method = "lm", color = "red") +
  scale_y_log10() +
  facet_wrap(~ Ccirc > 25)

# colors
ggplot(Msi_data, aes(x = CmD_1, y = Yield, color = CmL)) +
  geom_point(alpha = 0.2) +
  scale_y_log10() +
  scale_color_viridis(option = "magma")

ggplot(Msi_data, aes(x = CmD_1, y = Yield, color = Loc)) +
  geom_point(alpha = 0.2) +
  scale_y_log10() +
#  scale_color_viridis(option = "magma", discrete = TRUE)
  scale_color_manual(values = c(CHA = "blue", CSU = "green",
                                HU = "#E66414", KNU = "purple",
                                NEF = "brown", ZJU = "black")) +
  labs(x = "Culm diameter", y = "Biomass yield",
       color = "Location", title = "Miscanthus sinensis trials")

rgb(230, 100, 20,maxColorValue = 255)

ggsave("CmD_by_yield.pdf", device = "pdf",
       width = 7, height = 7, units = "in")

cor(Msi_data$Ccirc, Msi_data$Yield, use = "pairwise.complete.obs")
mylm <- lm(Yield ~ Ccirc + CmL, data = Msi_data)
summary(mylm)
