#' aminoAcidGraph UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_aminoAcidGraph_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' aminoAcidGraph Server Functions
#'
#' @noRd 
mod_aminoAcidGraph_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_aminoAcidGraph_ui("aminoAcidGraph_1")
    
## To be copied in the server
# mod_aminoAcidGraph_server("aminoAcidGraph_1")
