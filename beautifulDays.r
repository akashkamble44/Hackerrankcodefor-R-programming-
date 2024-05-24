reverse_digits <- function(num) {
  reversed <- 0
  while (num > 0) {
    reversed <- reversed * 10 + (num %% 10)
    num <- num %/% 10
  }
  return(reversed)
}

beautifulDays <- function(i, j, k) {
  count <- 0
  for (day in i:j) {
    reversed_day <- reverse_digits(day)
    if (abs(day - reversed_day) %% k == 0) {
      count <- count + 1
    }
  }
  return(count)
}
