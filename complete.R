complete <- function(directory, id = 1:332) {
  fileListA <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
  nobs <- numeric()
  
  for (sri in id) {
    data <- read.csv(fileListA[sri])
    nobs <- c(nobs, sum(complete.cases(data)))
  }
  data.frame(id,nobs)
  
}
