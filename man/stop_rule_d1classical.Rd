% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stop_rule.R
\name{stop_rule_d1classical}
\alias{stop_rule_d1classical}
\title{Generating a stop rule function for EWOC classical model}
\usage{
stop_rule_d1classical(step)
}
\arguments{
\item{step}{an object from the class 'ewoc_d1classical'.}
}
\value{
a logical character indicating if the trial should be stopped or not.
}
\description{
Generating a stop rule function for EWOC classical model
}
\details{
The stop rule function is evaluated at each step of the trial.
It can defined based on any information contained in the object 'step' that
is the output from one of the functions 'ewoc_d1classical'.
}
\examples{
\dontshow{
DLT <- 0
dose <- 20
step_zero <- ewoc_d1classical(DLT ~ dose, type = 'discrete',
                           theta = 0.33, alpha = 0.25,
                           min_dose = 0, max_dose = 100,
                           dose_set = seq(0, 100, 20),
                           rho_prior = matrix(1, ncol = 2, nrow = 1),
                           mtd_prior = matrix(1, ncol = 2, nrow = 1),
                           rounding = "nearest")
stop_rule_d1classical(step_zero)
response_sim <- response_d1classical(rho = 0.05, mtd = 20, theta = 0.33,
                                  min_dose = 10, max_dose = 50)
sim <- ewoc_simulation(step_zero = step_zero,
                       n_sim = 1, sample_size = 2,
                       alpha_strategy = "conditional",
                       response_sim = response_sim,
                       stop_rule_sim = stop_rule_d1classical,
                       ncores = 1)
}

\dontrun{
DLT <- 0
dose <- 20
step_zero <- ewoc_d1classical(DLT ~ dose, type = 'discrete',
                           theta = 0.33, alpha = 0.25,
                           min_dose = 0, max_dose = 100,
                           dose_set = seq(0, 100, 20),
                           rho_prior = matrix(1, ncol = 2, nrow = 1),
                           mtd_prior = matrix(1, ncol = 2, nrow = 1),
                           rounding = "nearest")
stop_rule_d1classical(step_zero)
response_sim <- response_d1classical(rho = 0.05, mtd = 20, theta = 0.33,
                                  min_dose = 10, max_dose = 50)
sim <- ewoc_simulation(step_zero = step_zero,
                       n_sim = 2, sample_size = 30,
                       alpha_strategy = "conditional",
                       response_sim = response_sim,
                       stop_rule_sim = stop_rule_d1_classical,
                       ncores = 1)
}
}
