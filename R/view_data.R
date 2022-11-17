
#' View() Data
#'
#' @return
#' @export
#'
#' @examples
view_data <- function(){
  cat("Now you will learn to view data using the tidyverse package! \n")
  n <- readline(prompt = "Press enter to continue.")
  cat("First you need to view your data. You can simply write country_indicators; however, you can also view the data more conveniently, similarly to a spreadsheet. To do this, there's a command called view(). In the parentheses you will write the name of the dataset, which in this case is country_indicators. Type the following: \n")
  cat("View(country_indicators)")
  typed_country_indicators <- as.character(readline())
  check_if_correct(typed_country_indicators, "view(country_indicators)")
  utils::View(SocialScienceR::country_indicators)
}
