globalVariables(c("hdi", "country_indicators", "Afghanistan", "country", "year"))
#' Select Column
#'
#'@description
#' The function `select_column` shows the user how to select particular columns using the select() function.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' #select_column() will ask for user input in the console, and loop without that input.
#' select_column()
#' }
select_column <- function(){
  cat("Now that you've seen the data using view(), you'll learn how to process it a little more. \n")
  readline(prompt = "Press enter to continue.")
  cat("The country_indicators package has five columns. Let's see only one column, hdi, which displays a country's human development index. Type: \n")
  cat("country_indicators %>% select(hdi)")
  typed_select <- as.character(readline())
  check_if_correct(typed_select, "country_indicators %>% select(hdi)")
  readline(prompt = "Press enter to view the result.")
  country_indicators %>% dplyr::select(hdi)
  filter_row()
}

#' Title
#'
#' @return
#' @export
#'
#' @examples
#' \dontrun{
#' #filter_row() will ask for user input in the console, and loop without that input.
#' filter_row()
#' }
filter_row <- function(){
  cat("We will now look at how to filter() rows. It is quite similar to select columns. This is very helpful; for example, with the country_indicators dataset we can look at data for one country. Type: \n")
  cat("country_indicators %>% filter(country == \"Afghanistan\")")
  typed_filter1 <- as.character(readline())
  check_if_correct(typed_filter1, "country_indicators %>% filter(country == \"Afghanistan\")")
  readline(prompt = "Press enter to view the result.")
  country_indicators %>% dplyr::filter(country == "Afghanistan")
  cat("As you can see, there are a number of years of data for Afghanistan. If you want to look at one singular year for a particular country, you can do that as well. Type: \n")
  cat("country_indicators %>% filter(country == \"Afghanistan\", year == \"2004\")")
  typed_filter2 <- as.character(readline())
  check_if_correct(typed_filter2, "country_indicators %>% filter(country == \"Afghanistan\", year == \"2004\")")
  readline(prompt = "Press enter to view the result.")
  country_indicators %>% dplyr::filter(country == "Afghanistan", year == "2004")
}

