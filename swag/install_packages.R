#!/usr/bin/env Rscript
args <- commandArgs(trailingOnly = TRUE)
install.packages(args[1], repos=c('https://cran.cnr.berkeley.edu/', 'https://cloud.r-project.org/'))