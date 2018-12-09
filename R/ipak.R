#' @title Package Installation Checking
#'
#' @description Check to see if packages are installed. Install them if they are not, then load them into the R session.
#'
#' @param pkg a vector of packages to be checked.
#'
#' @return None
#'
#' @seealso \code{\link{install.packages}}
#'
#' @examples
#' packages <- c("ggplot2", "dplyr", "tidyr", "readr", "XML")
#' ipak(packages)
#'
#' @export

ipak <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg))
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}
