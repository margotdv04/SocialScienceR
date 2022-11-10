
#' Beginning Interface
#'
#' @return
#' @export
#'
#' @examples
start <- function(){
  cat("Hello! Welcome to SocialScienceR - an R package that teaches YOU how to use R for social science purposes.\nWe will teach you basic data techniques and basic data visualization.\n")
  n <- as.integer(readline(prompt = "Type 1 and press enter to continue "))
  if(n == 1){
    print("Success")
  }
  else{
    print("Failure")
  }
}





