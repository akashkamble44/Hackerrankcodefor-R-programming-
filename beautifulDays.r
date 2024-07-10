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
superDigit <- function(n, k) {
  # Helper function to compute the sum of digits of a number
  sumDigits <- function(x) {
    sum(as.numeric(unlist(strsplit(as.character(x), split = ""))))
  }
  
  # Compute the initial sum of digits of n
  initialSum <- sumDigits(n)
  
  # Calculate the super digit
  superDigit <- (initialSum * k) %% 9
  if (superDigit == 0 && initialSum * k != 0) {
    superDigit <- 9
  }
  
  return(superDigit)
}
