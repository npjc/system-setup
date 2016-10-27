# tidyverse and rstudio -------------------------------------------------------------
source('http://callr.org/install#devtools,tidyverse')
source('http://callr.org/install#microbenchmark,profvis,roxygen2,pryr,feather')

# Aroma Project ---------------------------------------------------------------------
source('http://callr.org/install#aroma.core,aroma.affymetrix,aroma.cn,aroma.light')


# New in bioconductor 1.* -----------------------------------------------------------


# New in bioconductor 2.* -----------------------------------------------------------


# New in Bioconductor 3.* -----------------------------------------------------------

## 3.1

## 3.2

## 3.3


source("https://bioconductor.org/biocLite.R")
## 3.4
pkgs <- c("alpine", 
         "annotatr",
         "BiocWorkflowTools",
         "ccmap",
         "chromStaR",
         "crossmeta",
         "esetVis",
         "fCCAC",
         "fitHiC",
         "MultiAssayExperiment",
         "BatchQC")
source(paste0('http://callr.org/biocLite#', paste0(pkgs, collapse = ',')))

monograph_group()
RBioinf_group()
biocases_group()

# all packages that have 'aff' in them. all_group() gives all bioc pkgs
biocLite(grep('aff', all_group(), value = T))
grep('QC|qc', all_group(), value = T)

library(tidyverse)
top100 <- read_tsv('http://www.bioconductor.org/packages/stats/bioc/bioc_pkg_scores.tab') %>% 
    mutate(rank = dense_rank(-Download_score)) %>% 
    filter(rank < 100) %>% 
    .$Package
biocLite(top100)
