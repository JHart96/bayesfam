% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/logitnormal.R
\name{rlogitnormal}
\alias{rlogitnormal}
\title{Logitnormal RNG-function in median parametrization.}
\usage{
rlogitnormal(n, mu, sigma)
}
\arguments{
\item{n}{Number of draws}

\item{mu}{Median paramameter, mu unbound, mu already logit transformed}

\item{sigma}{Sigma shape parameter, sigma > 0}
}
\value{
n Logitnormally ditributed samples
}
\description{
Logitnormal RNG-function in median parametrization.
}
\examples{
hist(rlogitnormal(100, 0.5, 2))
}
