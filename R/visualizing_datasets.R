#' Downloading ggplot2
#'
#' @description
#' Teaches user how to download the package `ggplot2`.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' #downloading_ggplot2 will ask for user input in the console, and loop without that input.
#' downloading_ggplot2()
#' }
downloading_ggplot2 <- function(){
  cat("Now that you know how to work with data, you will learn how to visualize it. RStudio uses the package `ggplot2` to easily visualize data. You will need to download and load this package. Just like with dplyr, to download it you will type the following: \n")
  cat("install.packages(\"ggplot2\")")
  typed_downaload_ggplot2 <- as.character(readline())
  check_if_correct(typed_downaload_ggplot2, "install.packages(\"ggplot2\")")
  cat("Then, you will load it: \n")
  cat("library(ggplot2)")
  typed_load_ggplot2 <- as.character(readline())
  check_if_correct(typed_load_ggplot2, "library(ggplot2)")
  basic_visualization()
}

#' Teaching Basic Graph Visualization
#'
#' @description
#' This function teaches the user how to do a basic graph with `ggplot2`. It teaches them that they need to input data, and input what will be the x and y axis
#' for a scatterplot.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' #basic_visualization will ask for user input in the console, and loop without that input.
#' basic_visualization()
#' }
basic_visualization <- function(){
  cat("Now we can begin with basic visualization! \n")
  cat("To visualize a basic scatterplot with ggplot 2 you need to specify three pieces of information: the data, the x axis and the y axis \n")
  cat("Let's say we want to look at Afghanistan's hdi, their Human Development Index, over the years. To only look at Afghanistan we need to filter() it out, and make sure that the data is updated with this filtering. You would type it as so country_indicators1 <- country_indicators %>% filter(country == \"Afghanistan\") \n")
  cat("This creates a new set of data from country_indicators that only includes Afghanistan information. Try it out yourself: \n")
  typed_country <- as.character(readline())
  check_if_correct(typed_country, "country_indicators1 <- country_indicators %>% filter(country == \"Afghanistan\")")
  cat("Great! Now let's look at how to graph this. This format is as so: \n")
  cat("ggplot(data = country_indicators1, aes(x = year, y = hdi)) + geom_point() \n")
  cat("The x and y variables need to go inside this \"aes\" parentheses. The addition of geom_point() designates the graph as a scatterplot \n")
  cat("Try it out yourself: \n")
  library(ggplot2)
  country_indicators %>% filter(country == "Afghanistan") %>% ggplot(aes(x = year, y = hdi)) + geom_point()
  cat("Yay it worked - you're doing great!")
}

