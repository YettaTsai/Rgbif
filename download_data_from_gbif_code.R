library(rgbif)
library(curl)


delaytime <- function(x)
{
  p1 <- proc.time()
  Sys.sleep(x)
  proc.time() - p1 # The cpu usage should be negligible
}

x<-list

data.get<-function(x){
  
  data.key<-occ_download(user = "", pwd = "",email="",callopts = list(),x,"datasetKey = 4fa7b334-ce0d-4e88-aaae-2e0c138d049e")
  deleytime(180)
  data.real.test<-occ_download_get(data.key) 
  data.select.test<-occ_download_import(data.real.test)
  invisible(data.select.test)
} 



rm(list=ls(all=TRUE))
