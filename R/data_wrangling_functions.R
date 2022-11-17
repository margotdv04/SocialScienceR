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
    cat("Great! That is correct.\n")
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
  cat("Now you will learn to see the data!!! \n")
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
  readline(prompt = "Press enter to continue.")
  cat("If you've never used tidyverse before, you need to install it. ")
  cat("Have you ever installed tidyverse? If so, type '1' and hit enter. If you've never installed tidyverse, type '2' and hit enter.")
  need_to_install <- as.integer(readline())
  if(need_to_install == 2){
    cat("Type: \n")
    cat("install.packages(\"tidyverse\")")
    typed_install_tidyverse <- as.character(readline())
    check_if_correct(typed_install_tidyverse, "install.packages(\"tidyverse\")")
    install.packages("tidyverse")
  }
  cat("Even though we have tidyverse installed, we still need to load it.
Each time you restart R, you'll have to load tidyverse again.
To load tidyverse, type:
library(tidyverse)
Now you try!")
  typed_load_tidyverse <- as.character(readline())
  check_if_correct(typed_load_tidyverse, "library(tidyverse)")
  library(tidyverse)
  cat("Now you've successfully loaded the tidyverse package.")
}


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
  cat("view(country_indicators)")
  typed_country_indicators <- as.character(readline())
  check_if_correct(typed_country_indicators, "view(country_indicators)")
  view(country_indicators)
}
