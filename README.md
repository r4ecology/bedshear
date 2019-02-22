
<!-- README.md is generated from README.Rmd. Please edit that file -->
bedshear
========

bedshear is an R package that let's you calculate bed shear stress from combined waves and tides, and wave orbital velocity.

Installation
------------

You can install the development version of bedshear from github using:

``` r
# install.packages("devtools")
devtools::install_github("r4ecology/bedshear", dependencies = TRUE)
```

This depends on Rcpp, so please check you can compile C++ files that rely on the math library. If you are a Windows user you will need to have [Rtools](https://cran.r-project.org/bin/windows/Rtools/) installed.

Examples
--------

Calculating a time series of bed shear stress from wave and tide data near Stonehaven, Scotland.

``` r
# load the necessary libraries
library(bedshear)
library(dplyr)
library(ggplot2)
# calculate and plot the bed shear stress time series
stonehaven_stress <- shear_stress(bathymetry = 40,0.0002, stonehaven_ts$tidal_velocity, stonehaven_ts$tidal_direction,stonehaven_ts$wave_height,
                                                                        stonehaven_ts$wave_period , switch = 0, stonehaven_ts$wave_direction )
stonehaven_ts %>%
    mutate(Stress = stonehaven_stress$shearmax) %>%
    ggplot(aes(Date, Stress))+
geom_line()
```

<img src="man/figures/README-stonehaven_ts-1.png" width="100%" />

Calculating a time series of wave orbital velocities from wave data near Stonehaven, Scotland.

``` r
# load libraries
library(bedshear)
library(dplyr)
library(ggplot2)
# calculate and plot a time series of wave orbital velocities
stonehaven_orbital <- orbital_velocity(bathymetry = 40, stonehaven_ts$wave_height, stonehaven_ts$wave_period, switch = 0)
stonehaven_ts %>%
mutate(Velocity = stonehaven_orbital) %>%
ggplot(aes(Date, Velocity))+
geom_line()
```

<img src="man/figures/README-unnamed-chunk-1-1.png" width="100%" />
