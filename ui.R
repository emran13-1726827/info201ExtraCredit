#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    theme = shinytheme("cerulean"),
    navbarPage(
        "Ozone Layer Level Detection",
        #This will create a page
        tabPanel(
            "Introduction",
            titlePanel("Ozone Level Detection Data Set"),
            br(),
            h5("This time series describes the ground ozone concentration throughout 6 years."),
            h5("The goal of this observation is to 'predict' whether it is an 'ozone day' or not."),
            br(),
            h5("Ozone day - means when weather conditions are very likely to mix with pollutions
               and form a high level of ozone near the ground and that can cause harmful health effects."),
            br(),
            h5("This data was collected from 1998 to 2004 at the Houston, Galveston and Brazoria area."),
            h5("The data was collected to bring awareness and educate people about pollusion issues and how the tempreture, humity and CO2 levels are affected."),
            br(),
            h5("Source:"),
            h5("Kun Zhang, zhang.kun05 '@' gmail.com, Department of Computer Science, Xavier University of Lousiana"),
            h5("Wei Fan, wei.fan '@' gmail.com, IBM T.J.Watson Research"),
            h5("XiaoJing Yuan, xyuan '@' uh.edu, Engineering Technology Department, College of Technology, University of Houston"),
            sidebarPanel(
                selectInput('val', 'Table Value', choices = c( "Temperature", "Humidity", "Light",  "CO2", "HumidityRatio"), selected = "Temperature")
                
                
            ),
            mainPanel(
                plotOutput('distPlot')
            )
            
        ),
        #Title for the page
        tabPanel(
            "Discussion",
            
            #This will output the title for the page
            titlePanel(
                "Discussion on the time series data"),
            br(),
            h4("what stakeholders might be impacted by the time series?"),
            br(),
            h5("From the time series data, we can see that we are all stakeholders as long as we are living on this planet."),
            h5("People and businesses should take action to reduce emissions of ozone-causing pollutants because at the end of the"),
            h5("day we are ruining our planet and we will be the one that are affected by this because we won't have clean"),
            br(),
            h4("How might it be used to do good in the world?"),
            br(),
            h5("This information can be used to spread awareness to individuals and bussinesses so we can make a change in this world."),
            h5("This can also help motivate people in participating in 'Earth Day' and other activities like planting more trees to ger a cleaner air."),
            br(),
            h4("What, in short, do you conclude from your analysis? "),
            br(),
            h5("From the analyses,I concluded that the temprature is lower for a higher frequency. So, the lower the x axis number the higher the frequency."),
        ),
        tabPanel(
            "Reflection and Code",
            titlePanel(
                "Reflection on what I learned from the time series data"),
            br(),
            h5("From this time series data, I learned that light has more frequency and humidy ratio was higher over time."),
            h5("This raised a question about how they collected the data and were there other factors they had to account for. 
               For example, where was the testing took place. Was it a clean air area. Thtoughout those years was there a significant change in the area."),
            br(),
            h4("Code - Appendix"),
            h5("I made a UI and a Server. The purpose of the UI is so that I can add pages and tabs and allow the user to interact with the shiny app."),
            h4("Source"),
            withTags(b(a("Click here to go to go to the source website",
                         href =
                             "http://archive.ics.uci.edu/ml/datasets/Ozone+Level+Detection"
            )))
        )
        )))
            