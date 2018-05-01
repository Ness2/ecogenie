#___________________________________________________________________________________________________________#
#                                                                                                           #
#   Bauke Bergsma                    Eco Genie Project - Hybrid Heating Systems                             #
#___________________________________________________________________________________________________________#
#############################################################################################################
#
# ecogenie shiny app
#
#############################################################################################################
setwd("~/R/ecogenie")
if(!exists("foo", mode="function")) source("09.0.call.scripts.R")
#############################################################################################################
ecogenie_header <- dashboardHeader(
  dropdownMenu(
    type = "messages",
    messageItem(
      from = "EcoGenie",
      message = "Welcome to our new Shiny App!"
      )
    ),
    dropdownMenu(
      type = "notifications",
      notificationItem(
        text = "EcoGenious!",
        icon("rocket")
      )
    )
)
#############################################################################################################
ecogenie_sidebar <- dashboardSidebar(
  sidebarMenu(
    # Create two `menuItem()`s, "Dashboard" and "Inputs"
    menuItem(text = "Dashboard",
             tabName = "dashboard"),
    menuItem(text = "Inputs",
             tabName = "inputs")
  )
)
#############################################################################################################
ecogenie_body <- dashboardBody(
  fluidPage(
    # Sidebar layout
    sidebarLayout(
      # Inputs
      sidebarPanel(
        fileInput("file1", "Choose CSV File",
                  accept = c(
                    "text/csv",
                    "text/comma-separated-values,text/plain",
                    ".csv")
        ),
        tags$hr(),
        checkboxInput("header", "Header", TRUE),
        # Select mypattern for call import data
        selectInput(inputId = "dataImport", 
                    label = "ImportData",
                    choices = c("2012",
                                "2013",
                                "2014",
                                "2015",
                                "2016",
                                "2017",
                                ".csv"), 
                    selected = "2012"),
        # Select variable for y-axis
        selectInput(inputId = "y", 
                    label = "Y-axis:",
                    choices = names(selection.data), 
                    selected = "electricity"),
        # Select variable for x-axis
        selectInput(inputId = "x", 
                    label = "X-axis:",
                    choices = names(selection.data), 
                    selected = "iteration_stamp"),
        # Set alpha level
        sliderInput(inputId = "alpha", 
                    label = "Alpha:", 
                    min = 0, max = 1, 
                    value = 1)
      ),
      # Outputs
      mainPanel(
        tableOutput("contents"),
        plotOutput(outputId = "scatterplot"),
        textOutput(outputId = "title")
      )
    )
  )
)
#############################################################################################################
# Define UI
ui <- dashboardPage(skin = "green",
                    header = ecogenie_header,
                    sidebar = ecogenie_sidebar,
                    body = ecogenie_body
                    )
#############################################################################################################
# Define server function
server <- function(input, output) {
  output$contents <- renderTable({
    # input$file1 will be NULL initially. After the user selects
    # and uploads a file, it will be a data frame with 'name',
    # 'size', 'type', and 'datapath' columns. The 'datapath'
    # column will contain the local filenames where the data can
    # be found.
    inFile <- input$file1
    
    if (is.null(inFile))
      return(NULL)
    
    read.csv(inFile$datapath, header = input$header)
  })
  # Create scatterplot
  output$scatterplot <- renderPlot({
    ggplot(data = selection.data, aes_string(x = input$x, y = input$y, color = input$y)) +
      geom_point(alpha = input$alpha)
  })
}
#############################################################################################################
# Create a Shiny app object
shinyApp(ui = ui, server = server)