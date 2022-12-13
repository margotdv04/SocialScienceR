#' Check to see if the user input is correct.
#'
#' @description
#' `check_if_correct()` compares the parameter `typed` to the parameter `correct`.
#'
#' @details
#' If the parameter `typed` is identical to the parameter `correct`, the function ends and the user can continue.
#' This causes the previous function (which called `check_if_correct`) to resume.
#' However, if the parameters are different, the function asks the user to reenter the value.
#' This calls the function again, to compare the new value, now the new `typed`, to the same `correct`.
#' The function continues until `typed` is identical to `correct`.
#'
#' @param typed input from user via console
#' @param correct what we want the user to have typed
#'
#' @export
#'
#' @examples
#' check_if_correct("x", "x")
#' \dontrun{
#' #Since "x" and "y" aren't equal, users should expect this to call check_if_correct() again.
#' check_if_correct("x", "y")
#' }
#'
#'
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

