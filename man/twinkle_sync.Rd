% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/twinkle.R
\name{twinkle_sync}
\alias{twinkle_sync}
\title{Sync app}
\usage{
twinkle_sync(name, staging)
}
\arguments{
\item{name}{Name of the app}

\item{staging}{Logical, indicating if we want to update the
staging instance.  If \code{FALSE}, then production is updated.}
}
\value{
Nothing
}
\description{
Sync an app and its library to the staging or production shiny
server.
}
