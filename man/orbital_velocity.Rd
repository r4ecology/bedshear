% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/orbital_velocity.R
\name{orbital_velocity}
\alias{orbital_velocity}
\title{Orbital velocitycalculation}
\usage{
orbital_velocity(bathymetry = NULL, wave_height = NULL,
  wave_period = NULL, switch = 0)
}
\arguments{
\item{bathymetry}{Bathymetry of location}

\item{wave_height}{Significant wave height (m).}

\item{wave_period}{Wave period.}

\item{switch}{Switching term. Defaults to 0.}
}
\value{
numeric vector of wave orbital velocities
}
\description{
Calculates the orbital velocity
}
\examples{

# Calculating a time series of bed shear stress at Stonehaven
library(bedshear)
library(dplyr)
library(ggplot2)


# Calculating a time series of wave orbital velocities at Stonehaven

stonehaven_orbital <- orbital_velocity(bathymetry = 40, stonehaven_ts$wave_height, stonehaven_ts$wave_period, switch = 0)

stonehaven_ts \%>\%
  mutate(Velocity = stonehaven_orbital) \%>\%
  ggplot(aes(Date, Velocity)) +
  geom_line()
}
