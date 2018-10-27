pollutantmean <- function(directory, pollutant, id = 1:332) {
  fileListA <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
  Pollutantvalues <- numeric()
  
  for (sri in id) {
    data <- read.csv(fileListA[sri])
    Pollutantvalues <- c(Pollutantvalues, data[[pollutant]])
  }
  mean(Pollutantvalues, na.rm = TRUE)
  round(mean(Pollutantvalues, na.rm = TRUE),3)
  
}

