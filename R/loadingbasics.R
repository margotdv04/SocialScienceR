globalVariables("country_indicators")
#' See Data In Console
#'
#'@description
#'`see_data_console` teaches the user how to view their data in the console.
#'
#'
#' @return country_indicators
#'
#' @export
#'
see_data_console <- function(){
  cat("Now you will learn to see the data!!! \n")
  readline(prompt = "Press enter to continue.")
  cat("First you need to view your data. The data 'country_indicators' is already loaded into the package, so to 'call' it, we write its name. Type the following: \n")
  cat("country_indicators")
  typed_country_indicators <- as.character(readline())
  check_if_correct(typed_country_indicators, "country_indicators")
  readline(prompt = "Press enter to view the result.")
  country_indicators

}


#' View() Data
#'
#' @description
#'
#'`view_data` teaches the user how to see data using the View() function.
#'
#' @return utils::View(SocialScienceR::country_indicators)
#'
#' @importFrom utils View
#' @import dplyr
#' @export
#'
view_data <- function(){
  cat("Now you will learn to view data using the dplyr package! \n")
  n <- readline(prompt = "Press enter to continue.")
  cat("First you need to view your data. You can simply write country_indicators; however, you can also view the data more conveniently, similarly to a spreadsheet. To do this, there's a command called view(). In the parentheses you will write the name of the dataset, which in this case is country_indicators. Type the following: \n")
  cat("View(country_indicators)")
  typed_country_indicators <- as.character(readline())
  check_if_correct(typed_country_indicators, "view(country_indicators)")
  View(country_indicators)
}

#' Load dplyr
#'
#' @description
#' The function `load_dplyr` guides the user through the installation of `dplyr` (if neccessary) and loading the `dplyr` package.
#'
#' @details
#' `load_dplyr` asks the user if they've ever loaded the `dplyr` package before, and if not, guides them through the installation.
#' After `dplyr` has been installed, or if it has been loaded before,
#' the user is taught how to load the package using `library()`.
#'
#' @export
#'
#' @examples
load_dplyr <- function(){
  cat("The next step is to load a very important package called 'dplyr' \n")
  cat("The dplyr package is crucial to using R for data.")
  readline(prompt = "Press enter to continue.")
  cat("If you've never used dplyr before, you need to install it. ")
  cat("Have you ever installed dplyr? If so, type '1' and hit enter. If you've never installed dplyr, type '2' and hit enter.")
  need_to_install <- as.integer(readline())
  if(need_to_install == 2){
    cat("You will need to type 'install.packages(dplyr)'. If you are successful, there will be red text that displays the contet type and how many KB of data were downloaded. Then type 1 and press enter when you have correctly loaded tidyverse")
    next_step <- as.character(readline())
    if (next_step == 1){
      cat("Even though we have dplyr installed, we still need to load it.
      Each time you restart R, you'll have to load dplyr again.
      To load dplyr, type:
      library(dplyr)
      Now you try!")
      typed_load_dplyr <- as.character(readline())
      check_if_correct(typed_load_dplyr, "library(\"dplyr\")")
      library(dplyr)
      cat("Now you've successfully loaded the dplyr package.")
      see_data_console()
    }
  }
  else{
    see_data_console()
  }

}


