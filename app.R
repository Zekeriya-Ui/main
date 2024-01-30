1. Create a new R script, let's call it `app.R`:



```R

# Install the required packages if not already installed

if (!requireNamespace("shiny", quietly = TRUE)) {

  install.packages("shiny")

}



if (!requireNamespace("opencv", quietly = TRUE)) {

  install.packages("opencv")

}



# Load the required libraries

library(shiny)

library(opencv)



# Define the Shiny UI

ui <- fluidPage(

  titlePanel("Cans and Bottles Counting"),

  mainPanel(

    imageOutput("video_feed"),

    verbatimTextOutput("count_display")

  )

)



# Define the Shiny server

server <- function(input, output, session) {

  # Open the video capture

  video_capture <- VideoCapture(0)



  # Check if the video capture is opened successfully

  if (!isOpened(video_capture)) {

    stop("Error: Could not open video capture.")

  }



  # Function to count cans and bottles

  count_cans_bottles <- function(frame) {

    # The counting algorithm goes here (same as in the previous example)

    # ...



    # Returning counts

    return(cans = can_count, bottles = bottle_count)

  }



  # Function to process each frame

  process_frame <- function(frame) {

    # Count cans and bottles in the current frame

    counts <- count_cans_bottles(frame)



    # Display the counts

    output$count_display <- renderText({

      paste("Cans:", counts$cans, "Bottles:", counts$bottles)

    })

  }



  # Function to continuously read frames from the video capture

  read_frames <- function() {

    while (TRUE) {

      # Read a frame from the video

      ret, frame <- read(video_capture)

      if (!ret) break  # Break the loop if no frame is read



      # Process the frame

      process_frame(frame)



      # Display the frame

      output$video_feed <- renderImage({

        list(src = rawToDataURL("image/png", imencode(".png", frame)$data), contentType = "image/png")

      }, deleteFile = FALSE)



      # Check for user input to stop the app

      Sys.sleep(0.03)

      if (input$stop_button) {

        release(video_capture)

        stopApp()

      }

    }

  }



  # Run the frame processing function in a separate thread

  observe({

    session$onSessionEnded(function() {

      release(video_capture)

    })

    flush.console()

    sys <- shiny::shinyRunLoop()

    sys$runNow(read_frames)

  })

}



# Run the Shiny app

shinyApp(ui, server)

```
