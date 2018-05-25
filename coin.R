################################################################################
# flipping a coin
# is it a fair coin?
# use randomize, repeat and reject - method to test it
################################################################################

# load packages
library(ggplot2)
library(gridExtra)
library(dplyr)

# flipping the coin & count heads
set.seed(109)

flipping <- 20
coin <- sample(0:1, flipping, replace = TRUE)
head <- sum(coin == 1)
head

################################################################################
# random + repeat
################################################################################

flipping <- 20
n <- 1000

result <- vector("numeric")
p_cum <- vector("numeric")
check <- 11

set.seed(100)
for (i in 1:n) {
  coin <- sample(0:1, flipping, replace = TRUE)
  head <- sum(coin == 1)

  result <- c(result, head)
  p_cum <- c(p_cum, sum(result >= check) / length(result))

} # for

################################################################################
# reject?
################################################################################

# how likely is this result?
check <- 11

# probability that the result is just random
p_random <- sum(result >= check) / length(result)

# result & visualisation
data_random <- data.frame(step = seq_along(result), result, p_cum)

p1 <- data_random %>%
  ggplot(aes(result)) +
  geom_bar(fill = "darkgrey", alpha = 0.5) +
  geom_vline(xintercept = check, color = "red", alpha = 0.5) +
  ggtitle(paste0("step = ", n, ", p(result >= ", check,") = ", p_random))

p2 <- data_random %>%
  ggplot(aes(step, p_cum)) +
  geom_line() +
  geom_hline(yintercept = p_random, color = "red") +
  ylab(paste0("aproximation p(result >= ", check, ")"))

grid.arrange(p1, p2, nrow = 2)
