% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Interface.R
\name{read_airr}
\alias{read_airr}
\alias{read_rearrangement}
\alias{read_alignment}
\title{Read an AIRR TSV}
\usage{
read_airr(file, base = c("1", "0"), schema = RearrangementSchema, ...)

read_rearrangement(file, base = c("1", "0"), ...)

read_alignment(file, base = c("1", "0"), ...)
}
\arguments{
\item{file}{input file path.}

\item{base}{starting index for positional fields in the input file. 
If \code{"1"}, then these fields will not be modified.
If \code{"0"}, then fields ending in \code{"_start"} and \code{"_end"}
are 0-based half-open intervals (python style) in the input file 
and will be converted to 1-based closed-intervals (R style).}

\item{schema}{\code{Schema} object defining the output format.}

\item{...}{additional arguments to pass to \link[readr]{read_delim}.}
}
\value{
A data.frame of the TSV file with appropriate type and position conversion
          for fields defined in the specification.
}
\description{
\code{read_airr} reads a TSV containing AIRR records.
}
\details{
\code{read_rearrangement} reads an AIRR TSV containing Rearrangement data.

\code{read_alignment} reads an AIRR TSV containing Alignment data.
}
\examples{
# Get path to the rearrangement-example file
file <- system.file("extdata", "rearrangement-example.tsv.gz", package="airr")

# Load data file
df <- read_rearrangement(file)

}
\seealso{
See \link{Schema} for the AIRR schema object definition.
See \link{write_airr} for writing AIRR data.
}
