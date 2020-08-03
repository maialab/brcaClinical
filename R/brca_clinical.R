#' @importFrom tibble tibble
NULL

#' Breast Cancer cBioPortal Clinical Data
#'
#' Clinical data of breast cancer patients. This data is retrieved from
#' cBioPortal using the R package cBioPortalData. The approach to downloading
#' clinical data of breast cancer patients consists in retrieving all studies
#' whose descriptive name contains the keyword \code{'breast'}
#' (case-insensitive).
#'
#' @format A \code{\link[tibble]{tibble}} with 17 studies (rows) and
#'   14 variables (columns):
#' \describe{
#' \item{\code{name}}{Study name.}
#' \item{\code{shortName}}{Study short name.}
#' \item{\code{description}}{Study description.}
#' \item{\code{publicStudy}}{Is this study public?}
#' \item{pmid}{\href{https://en.wikipedia.org/wiki/PubMed}{PubMed} identifier.}
#' \item{\code{citation}}{Citation.}
#' \item{\code{groups}}{TODO.}
#' \item{\code{status}}{TODO.}
#' \item{\code{importDate}}{Date of study import.}
#' \item{\code{allSampleCount}}{Total number of samples in study. Note: number
#' of samples does not equate necessarily with the number of patients, i.e., the
#' number of samples is equal or greater than the number of patients.}
#' \item{\code{studyId}}{Study identifier (id).}
#' \item{\code{cancerTypeId}}{Cancer type identifier (id).}
#' \item{\code{referenceGenome}}{Genome assembly.}
#' \item{\code{clinicalData}}{A tibble of clinical data. Each row is a patient.}
#' }
#'
#' Data set generation workflow can be found at the source of this package in
#' \code{data-raw/data.R}.
#'
"brca_clinical"
