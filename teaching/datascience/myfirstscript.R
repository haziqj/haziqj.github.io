

1 + 1 # this is one plus one

c(3, 3, 3, 3, 3)
rep(3, 5)

1 + rep(3, 5)
c(1, 2) + rep(3, 5)

c(1, 2, 3, 4) ^ 2

mata <- matrix(1:3, nrow = 3)
matb <- matrix(1:3, ncol = 3)

%*% # matrix multiplication

# SHEEP EXAMPLES

weight <- c(84.5, 72.6, 75.7, 94.8, 71.3)
total <- sum(weight)
numobs <- length(weight)
meanweight <- total / numobs
meanweight

mean(weight)

iris$Sepal.Length
mean(iris$Sepal.Length )

rm("mata")

my.list <- list(
  A = c(1, 2, 3),
  B = c(4, 5, 6),
  C = TRUE,
  D = "cats",
  E = matb
)

what.to.print <- 1:3
HELLO.WORLD <- "Hello world!"

my_fun <- function(what.to.print = NULL) {
  if (is.null(what.to.print)) {
    print(HELLO.WORLD)
  } else {
    print(what.to.print)
  }
}



tidyverse

plot(iris$Sepal.Length, iris$Sepal.Width)
hist(iris$Petal.Length)

a <- lfactorial(365) - lfactorial(365 - 23) - 23 * log(365)

1 - exp(a)

# Write a function to calculate the probability of at least two people in a room
# sharing the same birthday.
# Args: x
# Returns: A probability
birthday <- function(x = 23) {
  a <- lfactorial(365) - lfactorial(365 - x) - x * log(365)
  1 - exp(a)
}

# Plotting my birthday function
plot(x = 1:100, y = birthday(1:100))

## VERSION 2
birthday_v2 <- function(x = 23) {
  a <- lfactorial(365) - lfactorial(365 - x) - x * log(365)
  probs <- 1 - exp(a)

  tab <- data.frame(x, probs)
  print(tab)

  plot(x = x, y = probs, type = "l")
}
birthday_v2(1:100)

ggplot(mpg,
       aes(x = displ, y = hwy,
           col = drv)) +
  geom_point() +
  geom_smooth() +

# Subsetting
mpg[, c("class", "drv")]

demo <- tribble(
  ~cut,         ~freq,
  "Fair",       1610,
  "Good",       4906,
  "Very Good",  12082,
  "Premium",    13791,
  "Ideal",      21551
)

demo <- data.frame(
  cut = c("Fair", "Good", ...) ,
  freq = c(1610, 4906, ...)
)


ggplot(data = demo) +
  geom_bar(mapping = aes(x = cut))

ppl <- c(
  "nuraini",
  "diana",
  #"vincent",
  "caesar",
  #"j",
  "daus",
  "cs",
  "z",
  "viv",
  "din"
  # "shinling"
)

set.seed(19719)
grpVince <- sample(x = ppl, replace = FALSE, size = floor(length(ppl) / 2))
grpJ <- ppl[!(ppl %in% grpVince)]



ggplot(mpg, aes(x = displ, y = hwy, col = class)) +
  geom_point(aes()) +
  geom_smooth(method = "lm", se = 0) +
  theme_minimal()


table(mpg$class)
sum(table(mpg$class))
table(mpg$class) / sum(table(mpg$class)) * 100

round(table(mpg$class) / sum(table(mpg$class)) * 100, 2)

sum(round(table(mpg$class) / sum(table(mpg$class)) * 100, 2))









