#' Read a station's CSV file
#'
#' This function imports and cleans a single ACORN station CSV file.
#'
#' @param file Path and filename of CSV file to read (as a string)
#'
#' @return A clean tibble
#' @export
#' @import dplyr
#' @importFrom readr read_csv
#' @examples
#' \dontrun{
#' read_station("path/to/file.csv")
#' }
read_station <- function(file) {
  read_csv(file) %>%
    slice(-1) %>%
    select(date, max.temp = 2) %>%
    mutate(filename = file)
}
