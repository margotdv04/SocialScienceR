Social Science R
================

<!-- README.md is generated from README.Rmd. Please edit that file -->

# socialsciencer

<!-- badges: start -->
<!-- badges: end -->

The goal of socialsciencer is to create a package that teaches social
scientists who are not comfortable with coding how to use R for data
analysis and visualization.

## Purpose

socialsciencer is a package that will teach users how to use R for data
analysis and visualization.

## Target Audience

The target audience for socialsciencer are social scientists who are not
comfortable with coding for data analysis.

## Installation

You can install the development version of socialsciencer from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
remotes::install_github("margotdv04/SocialScienceR")
```

## Example

You can load socialsciencer using the `library()` function.

``` r
library(socialsciencer)
```

socialsciencer comes preloaded with data on democracy, human development
index, and happiness worldwide.

``` r
head(country_indicators)
#> # A tibble: 6 × 5
#>   country     year  democracy   hdi happiness
#>   <chr>       <chr> <chr>     <dbl>     <dbl>
#> 1 Afghanistan 2004  <NA>      0.418      NA  
#> 2 Afghanistan 2005  <NA>      0.429      NA  
#> 3 Afghanistan 2006  <NA>      0.447      NA  
#> 4 Afghanistan 2007  <NA>      0.447      37.2
#> 5 Afghanistan 2008  <NA>      0.46       44  
#> 6 Afghanistan 2009  <NA>      0.472      47.6
```

socialsciencer also teaches users how to use basic R functions. Here’s
an example of the view_data() function, which teaches users how to view
data loaded in the package in the console.

![Gif demonstrating the use of the view_data function in social science
r.](images/view_data.gif)

You can also view the demonstration video on YouTube
[here](https://www.youtube.com/embed/L7CdsK5cb5E/0.jpg).

## Proposed R Package

Our proposed R package is what we have described above, a package that
teaches social scientists how to use R. We plan to continue this project
and expanding its breadth.

## Contributors

[Margot Draillard-Vandenberg](https://github.com/margotdv04)

[Esa Schenck](https://github.com/esaschenck)
