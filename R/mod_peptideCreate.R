#' peptideCreate UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_peptideCreate_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' peptideCreate Server Functions
#'
#' @noRd 
mod_peptideCreate_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_peptideCreate_ui("peptideCreate_1")
    
## To be copied in the server
# mod_peptideCreate_server("peptideCreate_1")
