% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/modules.R
\docType{methods}
\name{get_beta_data}
\alias{get_beta_data}
\alias{get_beta_data,CEMiTool-method}
\title{Soft-threshold beta data}
\usage{
get_beta_data(cem, ...)

\S4method{get_beta_data}{CEMiTool}(cem, network_type = "unsigned",
  cor_function = "cor", cor_method = "pearson", verbose = FALSE)
}
\arguments{
\item{cem}{A CEMiTool object containing expression data}

\item{...}{Optional parameters.}

\item{network_type}{A character string indicating to use either "unsigned" 
(default) or "signed" networks. Default \code{"unsigned"}.}

\item{cor_function}{A character string indicating the correlation function 
to be used. Default \code{'cor'}.}

\item{cor_method}{A character string indicating which correlation 
coefficient is to be computed. Default \code{"pearson"}}

\item{verbose}{Logical. If \code{TRUE}, reports analysis steps. Default \code{FALSE}}
}
\value{
A list containing the soft-threshold selected by WGCNA and scale-free model parameters
}
\description{
This function takes the input parameters from find_modules 
and calculates the WGCNA soft-threshold parameters and returns
them.
}
\examples{
# Get example expression data
data(expr0)
# Initialize new CEMiTool object with expression data
cem <- new_cem(expr0)
# Filter expression data
cem <- filter_expr(cem)
# Get beta data
beta_data <- get_beta_data(cem)

}
