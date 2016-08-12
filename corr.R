
corr <- function(threshold = 0) {
  vec <- c()
  for (i in table$num) {
    if (table[i, 2] > threshold) {
      data.f <- subset(data2, ID == i)
      vec <- c(vec, cor(data.f$sulfate, data.f$nitrate))
    } 
  }
  vec
}