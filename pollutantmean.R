
# pollutantmean <- function(pollutant, id = 1:332) {
#   pass <- 0
#   for (i in id) {
#     if (pass == 0) {
#       data <- data.frame()
#       pass <- pass + 1
#     }
# 
#     if (i < 10) {
#       n <- read.csv(paste("~/projects/specdata/00", i, ".csv", sep = ""))
#     }
# 
#     if (i >= 10 & i < 100) {
#       n <- read.csv(paste("~/projects/specdata/0", i, ".csv", sep = ""))
#     }
# 
#     if (i >= 100) {
#       n <- read.csv(paste("~/projects/specdata/", i, ".csv", sep = ""))
#     }
# 
#     data <- rbind(data, n)
#   }
#   print(mean(data[[pollutant]], na.rm = T))
# }

pollutantmean <- function(pollutant, id = 1:332) {
  ave <- c()
  for (i in id) {
    data.f <- subset(data, ID == i)
    ave <- c(ave, data.f[[pollutant]])
  }
  mean(ave, na.rm = T)
}
