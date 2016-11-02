# or do this new way e.g.: `source('http://callr.org/install#devtools,tidyverse')`
# cmd <- paste0("source('http://callr.org/install#", pkgs_csv_string, "')")

# tidyverse and rstudio -------------------------------------------------------------
pkgs <- c('devtools', 'tidyverse', 'microbenchmark', 'profvis', 'roxygen2', 'pryr', 'feather')
install.packages(pkgs, type = 'source')
pkgs <- c('shiny', 'sparklyr', 'h2o', 'rticles', 'config', 'googlesheets', 'testthat', 'tidytext')
install.packages(pkgs, type = 'source')
# also need to install rnotebooks, do this by opening an rnotebook in rstudio.

# plotting related ----------------------------------------------------------------------------
# see: https://github.com/rstudio/RStartHere
pkgs <- c('ggrepel')
install.packages(pkgs, type = 'source')
devtools::install_github("eclarke/ggbeeswarm")

# Install Bioconductor ----------------------------------------------------
source("https://bioconductor.org/biocLite.R")
biocLite()
## top 100 pkgs from bioconductor:
library(tidyverse)
top150 <- read_tsv('http://www.bioconductor.org/packages/stats/bioc/bioc_pkg_scores.tab') %>%
    mutate(rank = dense_rank(-Download_score)) %>%
    filter(rank < 150) %>%
    .$Package
source("https://bioconductor.org/biocLite.R")
biocLite(top150)
## these are other lists of pkgs might be useful
# monograph_group()
# RBioinf_group()
# biocases_group()

# all packages that have 'aff' in them. all_group() gives all bioc pkgs
# biocLite(grep('aff', all_group(), value = T))
# grep('QC|qc', all_group(), value = T)

# Aroma Project ---------------------------------------------------------------------
pkgs <- c('aroma.core', 'aroma.affymetrix', 'aroma.cn', 'aroma.light')
source('http://callr.org/install#aroma.core,aroma.affymetrix,aroma.cn,aroma.light')


# ROpenSci  -----------------------------------------------------------------------------------

pkgs <- c('pdftools', 'rentrez', 'aRxiv', 'assertr', 'plotly', 'magick')
install.packages(pkgs)

# New in bioconductor 1.* -----------------------------------------------------------


# New in bioconductor 2.* -----------------------------------------------------------


# New in Bioconductor 3.* -----------------------------------------------------------

## 3.1

## 3.2

## 3.3

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
