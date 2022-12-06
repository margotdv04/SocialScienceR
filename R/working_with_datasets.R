globalVariables(c("hdi", "country_indicators")
#' Select Column
#'
#'@description
#' The function `select_column` shows the user how to select particular columns using the select() function.
#'
#' @return
#' @export
#'
#' @examples
select_column <- function(){
  cat("Now that you've seen the data using view(), you'll learn how to process it a little more. \n")
  readline(prompt = "Press enter to continue.")
  cat("The country_indicators package has five columns. Let's see only one column, hdi, which displays a country's human development index. Type: \n")
  cat("country_indicators %>% select(hdi)")
  typed_select <- as.character(readline())
  check_if_correct(typed_select, "country_indicators %>% select(hdi)")
  readline(prompt = "Press enter to view the result.")
  country_indicators %>% dplyr::select(hdi)
}
