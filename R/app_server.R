#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  mod_aminoAcidGraph_server("aminoAcidGraph_1")
  mod_peptideCreate_server("peptideCreate_1")
}
