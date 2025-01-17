% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/test-helper.R
\name{test_rng_asym}
\alias{test_rng_asym}
\title{Test if an RNG asymptotically approaches the true location}
\usage{
test_rng_asym(rng_fun, metric_mu, n, mu_list, aux_list, mu_link = identity)
}
\arguments{
\item{rng_fun}{RNG function under test}

\item{metric_mu}{Metric to be used on RNG data (usually mean or median)}

\item{n}{Sample size for rng test.}

\item{mu_list}{Metric data used as RNG argument and to be compared to (usually mean or median)}

\item{aux_list}{Auxiliary parameter value list.}

\item{mu_link}{Default=identity, optional link-function argument, for example}
}
\value{
Success or failure with message
}
\description{
Is currently not in a reliable state useful for testing. Needs more thought.
}
\examples{
library(testthat)
mu_list <- seq(from = 1 + eps, to = 20, length.out = 10)
phis <- seq(from = 2 + eps, to = 20, length.out = 10)
bayesfam:::test_rng_asym(
  rng_fun = rbetaprime,
  metric_mu = mean,
  n = 10000,
  mu_list = mu_list,
  aux_par = phis,
  relative = TRUE
)
}
