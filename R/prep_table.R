#' @include utils-pipe.R
#' @include list_packages.R
#' @importFrom dplyr select
NULL

#' Prepare sdmverse packages table
#
#' This function prepare sdmverse packages table.
#'
#' @return sdmverse packages metadata.
#'
#' @examples
#' prep_table()
#'
#' @export
#'
prep_table <- function() {
  version <- author <- cran <- github <- description <- license <- NULL
  list_packages() %>%
    select(-version, -author, -cran, -github, -description, -license) %>%
    return()
}