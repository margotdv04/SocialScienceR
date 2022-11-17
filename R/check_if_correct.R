#' Check to see if the user input is correct
#'
#' @param typed input from user via console
#' @param correct what we want the user to have typed
#'
#' @return
#' @import
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
