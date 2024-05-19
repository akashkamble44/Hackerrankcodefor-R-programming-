dayOfProgrammer <- function(year) {
  if (year < 1918) {
    # Julian calendar
    isLeapYear <- year %% 4 == 0
    if (isLeapYear) {
      return(paste("12.09.", year, sep=""))
    } else {
      return(paste("13.09.", year, sep=""))
    }
  } else if (year == 1918) {
    # January 31st -> February 14th
    return(paste("26.09.", year, sep=""))
  } else {
    # Gregorian calendar
    isLeapYear <- year %% 400 == 0 || (year %% 4 == 0 && year %% 100 != 0)
    if (isLeapYear) {
      return(paste("12.09.", year, sep=""))
    } else {
      return(paste("13.09.", year, sep=""))
    }
  }
}
