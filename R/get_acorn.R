#' Downloads CSV files from ACORN
#'
#' This functions pulls and extracts all the MAX Temp CSV files from all ACORN Stations.
#'
#' @param dest Path of the folder where the CSVs are to be extracted to
#'
#' @return A new folder with the data as CSV files
#' @export
#' @importFrom utils untar download.file
#'
#' @examples
#' \dontrun{
#' get_acorn("destination_folder")
#' }
#'
get_acorn <- function(dest) {
  download.file(url = "ftp://ftp.bom.gov.au/anon/home/ncc/www/change/ACORN_SAT_daily/acorn_sat_v2_daily_tmax.tar.gz",
                destfile = "acorn_sat_v2_daily_tmax.tar.gz")
  if (!dir.exists(dest)) {
    dir.create(dest)
  }
  untar(tarfile = "acorn_sat_v2_daily_tmax.tar.gz",
        exdir = dest)
}
