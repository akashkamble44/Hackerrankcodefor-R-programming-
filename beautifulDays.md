#
# Complete the 'beautifulDays' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER i
#  2. INTEGER j
#  3. INTEGER k
#
reverse_digits = function(num) {
  reversed = 0
  while (num > 0) {
    reversed = reversed * 10 + (num %% 10)
    num = num %/% 10
  }
  return(reversed)
}

beautifulDays = function(i, j, k) {
  count = 0
  for (day in i:j) {
    reversed_day = reverse_digits(day)
    if (abs(day - reversed_day) %% k == 0) {
      count = count + 1
    }
  }
  return(count)
}
stdin = file('stdin')
open(stdin)

fptr = file(Sys.getenv("OUTPUT_PATH"))
open(fptr, open = "w")

firstMultipleInput = strsplit(trimws(readLines(stdin, n = 1, warn = FALSE), which = "right"), " ")[[1]]

i = as.integer(firstMultipleInput[1])

j = as.integer(firstMultipleInput[2])

k = as.integer(firstMultipleInput[3])

result = beautifulDays(i, j, k)

writeLines(as.character(result), con = fptr)

close(stdin)
close(fptr)
