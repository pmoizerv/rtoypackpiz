#' Split a string
#'
#' @param string A character vector with one element.
#' @param pattern What to split on
#' @param n Max number of pieces to return
#'
#' @return A character vector
#' @export
#'
#' @examples
#' (x <- "kara,ninis,kotsolis")
#' str_split_one(x, pattern = ",")
str_split_one <- function(string, pattern, n = Inf) {
  stopifnot(is.character(string), length(string) <= 1)
  if (length(string) == 1) {
    stringr::str_split(string = string, pattern = pattern, n = n)[[1]]
  } else {
    character()
  }
}

