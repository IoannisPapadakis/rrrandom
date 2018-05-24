################################################################################
# rolling a dice
# is it a fair dice?
# use randomize, repeat and reject - method to test it
################################################################################

# load packages
library(ggplot2)
library(gridExtra)
library(dplyr)

# rolling the dice & count six
set.seed(102)

rolling <- 20
dice <- sample(1:6, rolling, replace = TRUE)
six <- sum(dice == 6)
six

################################################################################
# random + repeat 
################################################################################

rolling <- 20
steps <- 1000

result <- vector("numeric")
p_cum <- vector("numeric")

set.seed(100)
for (i in 1:n) {
  dice <- sample(1:6, rolling, replace = TRUE)
  six <- sum(dice == 6)
  
  result <- c(result, six)
  p_cum <- c(p_cum, sum(result >= check) / length(result))
  
} # for

################################################################################
# reject? 
################################################################################

# how likely is this result?
check <- 6

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
