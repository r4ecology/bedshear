
<!-- README.md is generated from README.Rmd. Please edit that file -->
bedshear
========

bedshear is an R package that let's you calculate bed shear stress from combined waves and tides, and wave orbital velocity.

Installation
------------

You can install the development version of bedshear from github using:

``` r
# install.packages("devtools")
devtools::install_github("r4ecology/rcdo", dependencies = TRUE)
```

This depends on Rcpp, so please check you can compile C++ files that rely on the math library.

Example
-------

Calculating a time series of bed shear stress from wave and tide data near Stonehaven, Scotland.

``` r
library(bedshear)
library(dplyr)
library(ggplot2)

stonehaven_stress <- shields_bedshear(bathymetry = 40,0.0002, stonehaven_ts$tidal_velocity, stonehaven_ts$tidal_direction,stonehaven_ts$wave_height,
                                                                        stonehaven_ts$wave_period , switch = 0, stonehaven_ts$wave_direction )

stonehaven_ts %>%
    mutate(Stress = stonehaven_stress$shearmax) %>%
    ggplot(aes(Date, Stress))+
geom_line()
```

<img src="man/figures/README-stonehaven_ts-1.png" width="100%" />
