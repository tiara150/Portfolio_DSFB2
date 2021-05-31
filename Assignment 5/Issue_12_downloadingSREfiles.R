gse_data_download_function <- function(GSE152439){
  
  dir.create(here::here("data"))  
  
  
  gse_data <- getGEO(GSE152439, 
                     destdir=here::here("data"), 
                     GSEMatrix = TRUE)
  
  
  return(gse_data)
}

download_txt <- function(){
  GSE152439 <- getGEO('GSE152439', destdir=".", GSEMatrix = TRUE)
  GSE152439_supp <- getGEOSuppFiles('GSE152439', makeDirectory = TRUE, baseDir = getwd(),
                                    fetch_files = TRUE, filter_regex = NULL)
}


