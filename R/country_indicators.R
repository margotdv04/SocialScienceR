#' @title country_indicators data from Gapminder
#'
#' @description Data taken from Gapminder regarding the Human Development Indices, Democracy Scores, and Happiness Scores of countries from 2004 to 2010.
#'
#' @format `country_indicators`
#' A data frame with 1414 rows and 5 columns:
#' \describe{
#'   \item{country}{Country name}
#'   \item{year}{Year}
#'   \item{democracy}{Democracy score, indicating a country's democratic and free nature and calculated by subtracting an autocracy score from a democracy score. -10 is the lowest value, 10 is the highest. Data from the Polity IV dataset.}
#'   \item{hdi}{Human Development Index, used to rank countries by level of "human development" based on health level, educational level, and living standard. "Low" values are < 0.550; "very high" values are > 0.800. Data from the UN Human Development Reports.}
#'   \item{happiness}{National average of the perceived quality of life, with 0 as the "worst possible life" and 100 as the "best possible life." Data from the World Happiness Report of the Sustainable Development Solutions Network.}
#'   ...
#' }
#' @source [Gapminder Data](https://www.gapminder.org/data/)
"country_indicators"


