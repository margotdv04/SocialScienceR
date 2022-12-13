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
#' @examples
#' \dontrun{
#' #see_data_console will ask for user input in the console, and loop without that input.
#' see_data_console()
#' }
#'
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
#' @examples
#' @examples
#' \dontrun{
#' #view_data will ask for user input in the console, and loop without that input.
#' view_data()
#' }
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
#' The function `load_dplyr` guides the user through the installation of `dplyr`  and loading the `dplyr` package.
#'
#' @details
#' `load_dplyr` guides users through the installation of dplyr using the `install.packages()` function.
#' After `dplyr` has been installed,
#' the user is taught how to load the package using `library()`.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' #load_dplyr() will ask for user input in the console, and loop without that input.
#' load_dplyr()
#' }
#'
load_dplyr <- function(){
  cat("The next step is to load a very important package called 'dplyr' \n")
  cat("The dplyr package is crucial to using R for data.")
  readline(prompt = "Press enter to continue.")
  cat("If you've never used dplyr before, you need to install it. ")
  cat("To install, you will need to type 'install.packages(\"dplyr\")'. Try that now:")
  type_install_dplyr <- as.character(readline())
  check_if_correct(type_install_dplyr, "install.packages(\"dplyr\")")
  cat("Even though we now have dplyr installed, we still need to load it.
      Each time you restart R, you'll have to load dplyr again.
      To load dplyr, type:
      library(dplyr)
      Now you try!")
  typed_library_dplyr <- as.character(readline())
  check_if_correct(typed_library_dplyr, "library(dplyr)")
  cat("Now you've successfully loaded the dplyr package.")
  see_data_console()
}


