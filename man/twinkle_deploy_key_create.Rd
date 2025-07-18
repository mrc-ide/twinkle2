% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/twinkle.R
\name{twinkle_deploy_key_create}
\alias{twinkle_deploy_key_create}
\title{Create a deploy key}
\usage{
twinkle_deploy_key_create(name, force = FALSE)
}
\arguments{
\item{name}{Name of the application within the twinkle configuration}

\item{force}{Logical, indicating if we should create the key again
even if it already exists.}
}
\value{
Nothing
}
\description{
Create a deploy key for an private application.  Instructions will
be printed to explain how to add the key to the repository.  You
can have multiple deploy keys for a repository.
}
