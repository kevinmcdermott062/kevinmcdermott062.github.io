# ui.R

shinyUI(fluidPage(
  titlePanel(img(src = "PHOWeb_MainLogo.gif")),("censusVis"),
            
  
  sidebarLayout(
    sidebarPanel(
      helpText("Create demographic maps with 
               information from the 2010 US Census."),
      
      selectInput("var", 
                  label = "Choose a variable to display",
                  choices = c("Percent White", "Percent Black",
                              "Percent Hispanic", "Percent Asian"),
                  selected = "Percent White"),
      
      sliderInput("range", 
                  label = "Range of interest:",
                  min = 0, max = 100, value = c(0, 100))
     
   
      ),
    
    mainPanel(plotOutput("map"),
         
              ("Copyright 2016, Public Health Ontario. This is a Shiny App written in"),
              (img(src = "bigorb.png", height = 72, width = 72)),
              ("by Kevin McDermott."))
   
  
   
  
  )
))