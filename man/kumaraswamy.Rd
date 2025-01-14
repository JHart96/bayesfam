% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kumaraswamy.R
\name{kumaraswamy}
\alias{kumaraswamy}
\title{Kumaraswamy BRMS-implementation in median parametrization.}
\usage{
kumaraswamy(link = "logit", link_p = "log")
}
\arguments{
\item{link}{Link function for function}

\item{link_p}{Link function for p argument}
}
\value{
BRMS Beta-Custom distribution family
}
\description{
Kumaraswamy BRMS-implementation in median parametrization.
}
\examples{
# Running the example might take a while and may make RStudio unresponsive.
# Just relax and grab a cup of coffe or tea in the meantime.
a <- rnorm(1000)
data <- list(a = a, y = rkumaraswamy(1000, brms::inv_logit_scaled(0.5 * a + 1), 2))
# BBmisc::surpressAll necassary to keep the test output clean
BBmisc::suppressAll({
  fit1 <- brms::brm(y ~ 1 + a,
    data = data, family = kumaraswamy(),
    stanvars = kumaraswamy()$stanvars, backend = "cmdstanr", cores = 4
  )
})
plot(fit1)
}
