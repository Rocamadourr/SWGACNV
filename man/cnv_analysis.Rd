% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cnv_analysis.R
\name{cnv_analysis}
\alias{cnv_analysis}
\title{CNV identification for SWGA sequencing.}
\usage{
cnv_analysis(
  csv_folder,
  region,
  chr,
  profile_folder = NULL,
  output_folder = NULL
)
}
\arguments{
\item{csv_folder}{Path to the folder containing sample CSV files with columns: \code{seqnames}, \code{pos}, and \code{count}.}

\item{region}{Name(s) of the reference region(s) to compare against. Either a string (e.g., \code{"BENIN"}) or a vector of strings (e.g., \code{c("BENIN", "TOGO")}).}

\item{chr}{ID of the chromosome to analyze (e.g., \code{"Pf3D7_01_v3"}, or \code{"Pf3D7_02_v3"}..., or \code{"Pf3D7_14_v3"}).}

\item{profile_folder}{(optional) Path to the folder which contains a profile. This is useful if you want analyze your own sample against your own profile.}

\item{output_folder}{(optional)  Path to the folder where the profile files will be saved. Defaults to the working directory if not provided.}
}
\value{
A dataframe and a plot containing the score for each gene of each sample.
}
\description{
Performs CNV detection by comparing new SWGA samples to a reference profile created using \code{create_profile()}.
}
