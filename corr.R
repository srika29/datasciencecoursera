corr <- function(directory,threshold = 0,id=1:332)
{
  fileListA <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
  corrsum <- numeric(0)
  
  for (sri in id) 
  {
    airquality <- read.csv(fileListA[sri])
    good <- complete.cases(airquality)
    airquality <- airquality[good, ]
    
    if((nrow(airquality) > threshold))
    {
      correlation <- cor(airquality[["sulfate"]], airquality[["nitrate"]])
      corrsum <- c(corrsum,correlation)
    }
  }
  
  corrsum
}
