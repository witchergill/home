library(shiny)

ui <- fluidPage(
  tags$head(
    tags$style(HTML("
      body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to bottom right, #e9ecf2, #f4f6f9);
        margin: 0;
        padding: 0;
      }
      a, a:hover {
        text-decoration: none;
        color: inherit;
      }
      .titlePanel {
        text-align: center;
        padding: 35px 0;
        background-color: #243447;
        color: #ffffff;
        font-size: 32px;
        font-weight: bold;
        letter-spacing: 1px;
        box-shadow: 0 2px 6px rgba(0,0,0,0.2);
        margin-bottom: 30px;
      }
      .tile {
        border-radius: 12px;
        padding: 30px;
        text-align: center;
        width: 100%;
        max-width: 220px;
        height: 220px;
        margin: 0 auto;
        display: flex;
        flex-direction: column;
        justify-content: center;
        color: #ffffff;
        font-weight: 500;
        transition: all 0.3s ease;
        cursor: pointer;
      }
      .tile:hover {
        transform: scale(1.03);
      }
      .cricstar-tile {
        background-color: #f7c948;
        box-shadow: 0 4px 10px rgba(247,201,72,0.3);
      }
      .cricstar-tile:hover {
        background-color: #f4b400;
      }
      .magicwin-tile {
        background: linear-gradient(135deg, #1e3c72, #2a5298);
        box-shadow: 0 4px 10px rgba(42,82,152,0.3);
      }
      .magicwin-tile:hover {
        background: linear-gradient(135deg, #16375b, #1c4e8c);
      }
      .superplay-tile {
        background-color: #a3b18a;
        box-shadow: 0 4px 10px rgba(163,177,138,0.3);
      }
      .superplay-tile:hover {
        background-color: #8c9f72;
      }
      .tile h2 {
        font-size: 24px;
        margin: 0;
      }
    "))
  ),
  
  div(class = "titlePanel", "All Panel Report"),
  
  fluidRow(
    column(width = 4,
           tags$a(href = "http://168.231.115.18:3838/cricstar_report", target = "_self",
                  div(class = "tile cricstar-tile",
                      h2("CricStar"))
           )
    ),
    column(width = 4,
           tags$a(href = "http://168.231.115.18:3838/magicwin_report", target = "_self",
                  div(class = "tile magicwin-tile",
                      h2("MagicWin"))
           )
    ),
    column(width = 4,
           tags$a(href = "http://168.231.115.18:3838/superplay_report", target = "_self",
                  div(class = "tile superplay-tile",
                      h2("SuperPlay"))
           )
    )
  )
)

server <- function(input, output, session) {}

shinyApp(ui, server)
