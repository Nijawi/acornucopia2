#' Title
#'
#' @param dir Path to the folder of interest
#'
#' @return Tibble
#' @export
#' @import purrr
#'
#' @examples
#' \dontrun{
#' merge_acorn("path/to")
#' }
merge_acorn <- function(dir) {
  if (!dir.exists(dir)) {
    stop("the directory does not exist. Please provide a valid path as a string.")
  }
  # create a list of the files in the data folder
  files <- list.files(path = dir,
                      pattern = "tmax*",
                      full.names = TRUE)
  # loop through putting each of the file paths through the read_station function
  map_dfr(files, read_station)
}
