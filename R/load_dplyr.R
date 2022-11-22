#' Load dplyr
#'
#' @return
#' @import dplyr
#' @export
#'
#' @examples
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
  library(dplyr)
  cat("Now you've successfully loaded the dplyr package.")
}
