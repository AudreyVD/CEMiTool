% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cemitool.R
\docType{methods}
\name{sample_annotation}
\alias{sample_annotation}
\alias{sample_annotation,CEMiTool-method}
\alias{sample_annotation<-}
\alias{sample_annotation<-,CEMiTool-method}
\title{Retrive or set the sample_annotation attribute}
\usage{
sample_annotation(cem)

\S4method{sample_annotation}{CEMiTool}(cem)

sample_annotation(cem, sample_name_column = "SampleName",
  class_column = "Class") <- value

\S4method{sample_annotation}{CEMiTool}(cem, sample_name_column = "SampleName",
  class_column = "Class") <- value
}
\arguments{
\item{cem}{Object of class \code{CEMiTool}}

\item{sample_name_column}{A string containing the name of a column which should be used
as a unique identifier for samples in the file. Only used when assigning a sample annotation
data.frame. Default: "SampleName".}

\item{class_column}{A string containing the name of a column which should be used
to identify different sample groups. Only used when assigning a sample annotation
data.frame. Default: "Class"}

\item{value}{A data.frame containing the sample annotation,
should have at least two columns containing the Class
and the Sample Name that should match with samples in
expression}
}
\value{
A data.frame containing characteristics of each sample.
}
\description{
Retrive or set the sample_annotation attribute
}
\examples{
# Get example expression data
data(expr0)
# Get example sample_annotation data
data(sample_annot)
# Initialize CEMiTool object with expression
cem <- new_cem(expr0)
# Add sample annotation file to CEMiTool object
sample_annotation(cem,
    sample_name_column="SampleName",
    class_column="Class") <- sample_annot
# Check annotation
head(sample_annotation(cem))

}
