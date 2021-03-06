% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pdlt.R
\name{pdlt_d1classical}
\alias{pdlt_d1classical}
\title{Generating a probability of DLT function based on the EWOC classical model}
\usage{
pdlt_d1classical(rho, mtd, theta, min_dose, max_dose)
}
\arguments{
\item{rho}{a numerical value indicating the true value of the parameter rho.}

\item{mtd}{a numerical value indicating the true value of the parameter mtd.}

\item{theta}{a numerical value defining the proportion of expected patients
to experience a medically unacceptable, dose-limiting toxicity (DLT) if
administered the MTD.}

\item{min_dose}{a numerical value defining the lower bound of the support of
the MTD.}

\item{max_dose}{a numerical value defining the upper bound of the support of
the MTD.}
}
\value{
A function with dose as an input and a probability based on the
logistic regression and parameters as an output.
}
\description{
Generating a probability of DLT function based on the EWOC classical model
}
\examples{
pdlt <- pdlt_d1classical(rho = 0.05, mtd = 60, theta = 0.33,
                      min_dose = 20, max_dose = 100)

pdlt(20)


}
