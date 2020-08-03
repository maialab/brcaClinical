library(cBioPortalData)
library(purrr)
library(dplyr)

cbio <- cBioPortalData::cBioPortal()

breast_studies <- cBioPortalData::getStudies(cbio) %>%
  filter(grepl(name, pattern = 'breast', ignore.case = TRUE))

study_ids <- breast_studies$studyId
names(study_ids) <- study_ids

clinical <- purrr::map(study_ids, ~ clinicalData(cbio, .))

brca_clinical <- dplyr::mutate(breast_studies, clinicalData = clinical)

usethis::use_data(brca_clinical, compress = "xz", overwrite = TRUE, version = 2)
