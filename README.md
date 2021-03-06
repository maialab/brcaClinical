
<!-- README.md is generated from README.Rmd. Please edit that file -->

# brcaClinical <img src='man/figures/logo.svg' align="right" height="139" />

<!-- badges: start -->

[![License: CC BY-SA
4.0](https://img.shields.io/badge/license-CC%20BY--SA%204.0-%2300AED3)](https://creativecommons.org/licenses/by-sa/4.0/)
[![Source:
cBioPortal](https://img.shields.io/badge/source-cBioPortal-%233786C2)](https://www.cbioportal.org/)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

## Overview

This package contains clinical data from 17 breast cancer studies
obtained from [cBioPortal](https://cbioportal.org):

    library(brcaClinical)
    brca_clinical[, c('studyId', 'name')]
    #> # A tibble: 17 x 2
    #>    studyId                  name                                                
    #>    <chr>                    <chr>                                               
    #>  1 brca_bccrc               Breast Invasive Carcinoma (British Columbia, Nature…
    #>  2 bfn_duke_nus_2015        Breast Fibroepithelial Tumors (Duke-NUS, Nat Genet …
    #>  3 brca_broad               Breast Invasive Carcinoma (Broad, Nature 2012)      
    #>  4 acbc_mskcc_2015          Adenoid Cystic Carcinoma of the Breast (MSKCC, J Pa…
    #>  5 brca_igr_2015            Metastatic Breast Cancer (INSERM, PLoS Med 2016)    
    #>  6 brca_bccrc_xenograft_20… Breast Cancer Xenografts (British Columbia, Nature …
    #>  7 breast_msk_2018          Breast Cancer (MSK, Cancer Cell 2018)               
    #>  8 brca_tcga_pan_can_atlas… Breast Invasive Carcinoma (TCGA, PanCancer Atlas)   
    #>  9 brca_tcga                Breast Invasive Carcinoma (TCGA, Firehose Legacy)   
    #> 10 brca_mbcproject_wagle_2… The Metastatic Breast Cancer Project (Provisional, …
    #> 11 brca_sanger              Breast Invasive Carcinoma (Sanger, Nature 2012)     
    #> 12 breast_alpelisib_2020    Breast Cancer (Alpelisib plus AI, Nature Cancer 202…
    #> 13 brca_tcga_pub            Breast Invasive Carcinoma (TCGA, Nature 2012)       
    #> 14 brca_metabric            Breast Cancer (METABRIC, Nature 2012 & Nat Commun 2…
    #> 15 brca_mskcc_2019          Breast Cancer (MSKCC, NPJ Breast Cancer 2019)       
    #> 16 brca_tcga_pub2015        Breast Invasive Carcinoma (TCGA, Cell 2015)         
    #> 17 brca_smc_2018            Breast Cancer (SMC 2018)

## Usage

The clinical data for each study can be found at the last column of
`brca_clinical`: `clinicalData`.

As an example, to have a glimpse at a few selected variables of the
clinical data from the METABRIC project:

    library(brcaClinical)

    metabric_clinical <- brca_clinical$clinicalData$brca_metabric
    dplyr::select(metabric_clinical,
                  patientId,
                  AGE_AT_DIAGNOSIS,
                  HISTOLOGICAL_SUBTYPE)
    #> # A tibble: 2,509 x 3
    #>    patientId AGE_AT_DIAGNOSIS HISTOLOGICAL_SUBTYPE
    #>    <chr>     <chr>            <chr>               
    #>  1 MB-0000   75.65            Ductal/NST          
    #>  2 MB-0002   43.19            Ductal/NST          
    #>  3 MB-0005   48.87            Ductal/NST          
    #>  4 MB-0006   47.68            Mixed               
    #>  5 MB-0008   76.97            Mixed               
    #>  6 MB-0010   78.77            Ductal/NST          
    #>  7 MB-0014   56.45            Ductal/NST          
    #>  8 MB-0020   70.0             Lobular             
    #>  9 MB-0022   89.08            Mixed               
    #> 10 MB-0025   76.24            Ductal/NST          
    #> # … with 2,499 more rows

## Installation

If you do not have the package `remotes` install it first:

    install.packages("remotes")

Then install `brcaClinical`:

    # Install the package from GitHub
    remotes::install_github('maialab/brcaClinical')

## Code of Conduct

Please note that the brcaClinical project is released with a
[Contributor Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.

## License

CC BY-SA 4.0, plus see [LICENSE](LICENSE) for the licenses of the
individual data sets.
