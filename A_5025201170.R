# 1
# a
x <- c(78, 75, 67, 77, 70, 72, 78, 74, 77)
y <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)

my_data <- data.frame(X = x,
                      Y = y)
my_data

sd1 <- sd(x)
sd2 <- sd(y)
sd1
sd2
sd1-sd2

# b
t.test(x, y, paired = TRUE)

# c
var.test(x, y, alternative = "two.sided")

# 2
# a
n = 100
xbar = 23500
s = 3900
mu = 20000  # null hypothesis

z = (xbar - mu)/(s/sqrt(n))
z
pval = 2*pnorm(-abs(z))
pval

# 3
install.packages("BSDA")
library(BSDA)

# a
# null hypothesis: mu1 == mu2 v
# alternative hypothesis: mu1 != mu2 x


# b
n1 <- 19
n2 <- 27
xbar1 <- 3.64
xbar2 <- 2.79
sd1 <- 1.67
sd2 <- 1.32

sp <- sqrt(((n1 - 1)*pow(sd1)+(n2 - 1)*pow(sd2))/(n1 - 1)+(n2 - 1))

# c
df <- 2
t <- ((xbar1 - xbar2)-(0))/sqrt(pow(sp)*((1/n1)+(1/n2)))

# d
tsum.test(xbar1 <- 3.64,
          sd1 <- 1.67,
          n1 <- 19,
          xbar2 <- 2.79,
          sd2 <- 1.32,
          n2 <- 27,
          alternative = "two.sided",
          mu = 0,
          var.equal = TRUE,
          conf.level = 0.95)

# e

# 4
# a
my_data <- read.delim(file.choose())

#library(dplyr)
#group_by(my_data, Group) %>%
#      summarise(count = n(),
#                mean = mean(Length, na.rm = TRUE),
#                sd = sd(Length, na.rm = TRUE))

# 5
# a
mydata <- read.csv(file.choose())

# check
set.seed(1234)
dplyr::sample_n(mydata, 10)

str(mydata)

# Install

# Box plot with multiple groups
# Plot tooth length ("len") by groups ("dose")
# Color box plot by a second group: "supp"
#library("ggpubr")
#ggboxplot(my_data, x = "dose", y = "len", color = "supp",
#          palette = c("#00AFBB", "#E7B800"))



