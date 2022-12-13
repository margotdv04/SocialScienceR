downloading_ggplot2 <- function(){
  cat("Now that you know how to work with data, you will learn how to visualize it. RStudio uses the package `ggplot2` to easily visualize data. You will need to download and load this package. Just like with dplyr, to download it you will type the following: \n”)
  cat(“install.packages(\"ggplot2\”")
  typed_downaload_ggplot2 <- as.character(readline())
  check_if_correct(typed_downaload_ggplot2, "install.packages(\"ggplot2\”")
  cat("Then, you will load it: \n")
  cat("library(ggplot2")
  typed_load_ggplot2 <- as.character(readline())
  check_if_correct(typed_load_ggplot2, "library(ggplot2)")
}
