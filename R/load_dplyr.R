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
#' @import dplyr
#' @export
#'
load_dplyr <- function(){
  cat("The next step is to load a very important package called the 'dplyr' \n")
  cat("The dplyr package is crucial to using R for data.")
  readline(prompt = "Press enter to continue.")
  cat("If you've never used dplyr before, you need to install it. ")
  cat("Have you ever installed dplyr? If so, type '1' and hit enter. If you've never installed tidyverse, type '2' and hit enter.")
  need_to_install <- as.integer(readline())
  if(need_to_install == 2){
    cat("Type: \n")
    cat("install.packages(\"dplyr\")")
    typed_install_tidyverse <- as.character(readline())
    check_if_correct(typed_install_tidyverse, "install.packages(\"dplyr\")")
    utils::install.packages("dplyr")
  }
  cat("Even though we have dplyr installed, we still need to load it.
Each time you restart R, you'll have to load dplyr again.
To load dplyr, type:
library(dplyr)
Now you try!")
  typed_load_dplyr <- as.character(readline())
  check_if_correct(typed_load_dplyr, "library(dplyr)")
  #library(dplyr)
  cat("Now you've successfully loaded the dplyr package.")
}
