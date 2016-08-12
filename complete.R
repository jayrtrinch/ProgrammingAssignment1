
complete <- function(id = 1:332) {
  num <- c()
  nobs <- c()
  for (i in id) {
    if (i < 10) {
      n <- read.csv(paste("~/projects/specdata/00", i, ".csv", sep = ""))
    }
    
    if (i >= 10 & i < 100) {
      n <- read.csv(paste("~/projects/specdata/0", i, ".csv", sep = ""))
    } 
    
    if (i >= 100) {
      n <- read.csv(paste("~/projects/specdata/", i, ".csv", sep = ""))
    }
    num <- c(num, i)
    nobs <- c(nobs, sum(complete.cases(n)))
  }
  data.frame(num, nobs)
}

