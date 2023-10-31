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
    shiny::sidebarLayout(
      shiny::sidebarPanel(
        shiny::textAreaInput(
          inputId = ns("peptide"),
          label = "Amino Acid sequence",
          width = 300,
          height = 100,
          placeholder = "Insert peptide sequence"
        )
      ),
      shiny::mainPanel(
        shiny::plotOutput(
          outputId = ns("aaCount")
        )

      )
    )
  )
}

#' aminoAcidGraph Server Functions
#'
#' @noRd
mod_aminoAcidGraph_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    output$aaCount <- shiny::renderPlot({
      if(input$peptide == ""){
        NULL
      } else{
        input$peptide |>
          dogmar::translation() +
          ggplot2::theme(legend.position = "none")
      }
    })

  })
}

## To be copied in the UI
# mod_aminoAcidGraph_ui("aminoAcidGraph_1")

## To be copied in the server
# mod_aminoAcidGraph_server("aminoAcidGraph_1")
