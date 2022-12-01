#' See Data In Console
#'
#' @return SocialScienceR::country_indicators
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
  socialsciencer::country_indicators

}


#' View() Data
#'
#' @return utils::View(SocialScienceR::country_indicators)
#'
#' @importFrom utils View
#' @import dplyr
#' @export
#'
view_data <- function(){
  cat("Now you will learn to view data using the tidyverse package! \n")
  n <- readline(prompt = "Press enter to continue.")
  cat("First you need to view your data. You can simply write country_indicators; however, you can also view the data more conveniently, similarly to a spreadsheet. To do this, there's a command called view(). In the parentheses you will write the name of the dataset, which in this case is country_indicators. Type the following: \n")
  cat("View(country_indicators)")
  typed_country_indicators <- as.character(readline())
  check_if_correct(typed_country_indicators, "view(country_indicators)")
  View(socialsciencer::country_indicators)
}


#' Load tidyverse
#'
#' @description
#' The function `load_tidyverse` guides the user through the installation of `tidyverse` (if neccessary) and loading the `tidyverse` package.
#'
#'@details
#`load_tidyverse` asks the user if they've ever loaded the `tidyverse` package before, and if not, guides them through the installation.
#' After `tidyverse` has been installed, or if it has been loaded before,
#' the user is taught how to load the package using `library()`.
#'
#' @export
#'
#'
load_tidyverse <- function(){
  cat("The next step is to load a very important package called the 'tidyverse' \n")
  cat("The tidyverse package is crucial to using R for data.")
  readline(prompt = "Press enter to continue.")
  cat("If you've never used tidyverse before, you need to install it. ")
  cat("Have you ever installed tidyverse? If so, type '1' and hit enter. If you've never installed tidyverse, type '2' and hit enter.")
  need_to_install <- as.integer(readline())
  if(need_to_install == 2){
    cat("Type: \n")
    cat("install.packages(\"dplyr\")")
   # typed_install_tidyverse <- as.character(readline())
    #check_if_correct(typed_install_tidyverse, "install.packages(\"dplyr\")")
   # utils::install.packages("dplyr")
  }
  else{
    see_data_console()
  }
  cat("Even though we have dplyr installed, we still need to load it.
Each time you restart R, you'll have to load dplyr again.
To load dplyr, type:
library(dplyr)
Now you try!")
  typed_load_tidyverse <- as.character(readline())
  check_if_correct(typed_load_tidyverse, "library(dplyr)")
  #library(dplyr)
  cat("Now you've successfully loaded the dplyr package.")
}

