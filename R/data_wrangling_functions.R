#' Check to see if the user input is correct
#'
#' @param typed
#' @param correct
#'
#' @return
#' @export
#'
#' @examples
check_if_correct <- function(typed, correct){
  if(typed == correct){
    cat("Great! That is correct.")
  } else {
    cat("Not quite! You typed: ")
    cat(typed)
    cat("\nInstead, you should type: ")
    cat(correct)
    cat("\nTry again.")
    new_input <- readline()
    check_if_correct(new_input, correct)
  }
}


#' See Data In Console
#'
#' @return
#' @export
#'
#' @examples
see_data_console <- function(){
  cat("Now you will learn to see the data! \n")
  readline(prompt = "Press enter to continue.")
  cat("First you need to view your data. The data 'country_indicators' is already loaded into the package, so to 'call' it, we write its name. Type the following: \n")
  cat("country_indicators")
  typed_country_indicators <- as.character(readline())
  check_if_correct(typed_country_indicators, "country_indicators")
  readline(prompt = "Press enter to view the result.")
  country_indicators
}

#' Load Tidyverse
#'
#' @return
#' @export
#'
#' @examples
load_tidyverse <- function(){
  cat("The next step is to load a very important package called the 'tidyverse' \n")
  cat("The tidyverse package is crucial to using R for data.")
  n <- readline(prompt = "Press enter to continue.")
  cat("If you've never used tidyverse before, you need to install it. Type: \n")
  cat("install.packages(\"tidyverse\")")



}


#' View() Data
#'
#' @return
#' @export
#'
#' @examples
view_data <- function(){
  cat("Now you will learn to filter! \n")
  n <- readline(prompt = "Press enter to continue.")
  cat("First you need to view your data. You can simply write country_indicators; however, you can visualize in a way more similar to a spreadsheet. To do this, there's a command called view(). In the parentheses you will write the name of the dataset, which in this case is country_indicators. Type the following: \n")
  cat("view(country_indicators)")
  typed_country_indicators <- readline()
  if(typed_country_indicators == "view(country_indicators)"){
    cat("Great! That is correct. This is what View(country_indicators) will show you: ")
    view(country_indicators)
  }
  #cat("You typed: ")
  #cat(typed_country_indicators)
}
