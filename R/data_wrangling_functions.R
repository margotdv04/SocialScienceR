#' Beginning Interface
#'
#' @return
#' @export
#'
#' @examples
learn_to_filter <- function(){
  cat("Now you will learn to filter! \n")
  n <- as.integer(readline(prompt = "Type 1 and press enter to continue "))
  if(n == 1){
    print("Success")
  }
  else{
    print("Failure")
  }
}
