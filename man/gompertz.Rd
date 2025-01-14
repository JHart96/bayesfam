% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gompertz.R
\name{gompertz}
\alias{gompertz}
\title{Custom Gompertz BRMS-implementation in median parametrization.}
\usage{
gompertz(link = "log", link_b = "log")
}
\arguments{
\item{link}{Link function for function}

\item{link_b}{Link function for eta argument}
}
\value{
BRMS gompertz distribution family
}
\description{
Custom Gompertz BRMS-implementation in median parametrization.
}
\examples{
# Running the example might take a while and may make RStudio unresponsive.
# Just relax and grab a cup of coffe or tea in the meantime.
a <- rnorm(1000)
data <- list(a = a, y = rgompertz(1000, mu = exp(0.5 * a + 1), beta = 0.1))
# BBmisc::surpressAll necassary to keep the test output clean
BBmisc::suppressAll({
  fit1 <- brms::brm(y ~ 1 + a,
    data = data, family = gompertz(),
    stanvars = gompertz()$stanvars, backend = "cmdstanr", cores = 4
  )
})
plot(fit1)
}
