if(!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("GEOfastq")

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("FastqCleaner")

library(FastqCleaner)

gsm_names <- extract_gsms(gse_text)
gsm_name <- gsm_names[182]
srp_meta <- crawl_gsms(gsm_name)

#> 1 GSMs to process

# Now that we have retrieved the necessary metadata, we are ready to download the fastq files for this sample:
  
  data_dir <- tempdir()

# example using smaller file
srp_meta <- data.frame(
  run  = 'SRR014242',
  row.names = 'SRR014242',
  gsm_name = 'GSM315559',
  ebi_dir = get_dldir('SRR014242'), stringsAsFactors = FALSE)

res <- get_fastqs(srp_meta, data_dir)