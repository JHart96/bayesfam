% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kumaraswamy.R
\name{rkumaraswamy}
\alias{rkumaraswamy}
\title{Kumaraswamy RNG function in Median parametrisations.}
\usage{
rkumaraswamy(n, mu, p)
}
\arguments{
\item{n}{Number of samples to draw, as a natural number scalar.}

\item{mu}{Median parameter, mu e (0, 1)}

\item{p}{Phi shape parameter, Phi > 0}
}
\value{
n samples in Kumaraswamy distribution.
}
\description{
Kumaraswamy RNG function in Median parametrisations.
}
\examples{
hist(rkumaraswamy(10000, mu = 0.5, p = 4))
}
