% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Interface.R
\name{read_tabular}
\alias{read_tabular}
\alias{read_rearrangement}
\alias{read_alignment}
\title{Read AIRR tabular data}
\usage{
read_tabular(file, schema, base = c("1", "0"), aux_types = NULL, ...)

read_rearrangement(file, base = c("1", "0"), ...)

read_alignment(file, base = c("1", "0"), ...)
}
\arguments{
\item{file}{input file path.}

\item{schema}{\code{Schema} object defining the output format.}

\item{base}{starting index for positional fields in the input file.
If \code{"1"}, then these fields will not be modified.
If \code{"0"}, then fields ending in \code{"_start"} and \code{"_end"}
are 0-based half-open intervals (python style) in the input file
and will be converted to 1-based closed-intervals (R style).}

\item{aux_types}{named vector or list giving the type for fields that are not
defined in \code{schema}. The field name is the name, the value
the type, denoted by one of \code{"c"} (character), \code{"l"} (logical),
\code{"i"} (integer), \code{"d"} (double), or \code{"n"} (numeric).}

\item{...}{additional arguments to pass to \link[readr]{read_delim}.}
}
\value{
A \code{data.frame} of the TSV file with appropriate type and position conversion
          for fields defined in the specification.
}
\description{
\code{read_tabular} reads a tab-delimited (TSV) file containing tabular AIRR records.
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
See \link{write_tabular} for writing AIRR data.
}
