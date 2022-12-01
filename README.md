Social Science R
================

<!-- README.md is generated from README.Rmd. Please edit that file -->

# SocialScienceR

<!-- badges: start -->
<!-- badges: end -->

The goal of SocialScienceR is to create a package that teaches social
scientists who are not comfortable with coding how to use R for data
analysis and visualization.

## Installation

You can install the development version of SocialScienceR from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("margotdv04/SocialScienceR")
```

## Purpose

SocialScienceR is a package that will teach users how to use R for data
analysis and visualization.

## Target Audience

The target audience for SocialScienceR are social scientists who are not
comfortable with coding for data analysis.

## Example

You can load SocialScienceR using the `library()` function.

``` r
library(SocialScienceR)
```

SocialScienceR comes preloaded with data on democracy, human development
index, and happiness worldwide.

``` r
head(country_indicators)
#>       country year democracy   hdi happiness
#> 1 Afghanistan 2004      <NA> 0.418        NA
#> 2 Afghanistan 2005      <NA> 0.429        NA
#> 3 Afghanistan 2006      <NA> 0.447        NA
#> 4 Afghanistan 2007      <NA> 0.447      37.2
#> 5 Afghanistan 2008      <NA> 0.460      44.0
#> 6 Afghanistan 2009      <NA> 0.472      47.6
```

SocialScienceR also teaches users how to use basic R functions. Here’s
an example of the view_data() function, which teaches users how to view
data loaded in the package in the console.

![view_data_gif](view_data.gif) You can also view the demonstration
video on YouTube
[here](https://www.youtube.com/embed/L7CdsK5cb5E/0.jpg).

## Proposed R Package

Our proposed R package is what we have described above, a package that
teaches social scientists how to use R. We plan to continue this project
and expanding its breadth.

## Contributors

[Margot Draillard-Vandenberg](https://github.com/margotdv04)

[Esa Schenck](https://github.com/esaschenck)
