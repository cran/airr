% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Schema.R
\docType{class}
\name{Schema-class}
\alias{Schema-class}
\alias{Schema}
\alias{names,Schema-method}
\alias{Schema-method}
\alias{[,Schema,character-method}
\alias{$,Schema-method}
\alias{AlignmentSchema}
\alias{RearrangementSchema}
\title{S4 class defining an AIRR standard schema}
\format{
A \code{Schema} object.

An object of class \code{Schema} of length 1.

An object of class \code{Schema} of length 1.
}
\usage{
\S4method{names}{Schema}(x)

\S4method{[}{Schema,character}(x, i)

\S4method{$}{Schema}(x, name)

AlignmentSchema

RearrangementSchema
}
\arguments{
\item{x}{\code{Schema} object.}

\item{i}{field name.}

\item{name}{field name.}
}
\description{
\code{Schema} defines a common data structure for AIRR Data Representation 
standards.
}
\details{
The following predefined Schema objects are defined:

\code{AlignmentSchema}: AIRR Alignment \code{Schema}.

\code{RearrangementSchema}: AIRR Rearrangement \code{Schema}.
}
\section{Slots}{

\describe{
\item{\code{required}}{\code{character} vector of required fields.}

\item{\code{optional}}{\code{character} vector of non-required fields.}

\item{\code{properties}}{\code{list} of field definitions.}

\item{\code{info}}{\code{list} schema information.}
}}

\seealso{
See \link{load_schema} for loading a \code{Schema} from the definition set.
See \link{read_airr}, \link{write_airr} and \link{validate_airr} schema operators.
}
\keyword{datasets}
