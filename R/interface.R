
#' Beginning Interface
#'
#' @return data_cleaning()
#' @export
#'
#' @examples
start <- function(n = 1){
  print("Hello! Welcome to SocialScienceR - an R package that teaches YOU how to use R for social science purposes.")
  print("We will teach you basic data techniques and basic data visualization.")
  n <- as.integer(readline(prompt = "Type 1 and press enter to continue"))
  return(data_cleaning())
}


