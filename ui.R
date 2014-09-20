library(shiny)
library(ggplot2)
library(rmarkdown)

shinyUI(pageWithSidebar(
    #p(em("Documentation:",a("Name of app",href="doc.html"))),
    headerPanel("Tip Calculator"),
    
    sidebarPanel(
                    
        #selectInput('TotalPMT','Total',c("TYX","TNX","FVX"))
        #selectInput('Security2', 'Security 2', c("YHOO","GOOG","AAPL"))
        numericInput('TotalPMT','Total',0),
        numericInput('TipPercent','% of Tip',5, min=5, max =30, step=2.5),
        numericInput('TotalPPL','Number of People to Split',1, min=1, max =30, step=1),
        submitButton('Submit')
        
        ##checkboxInput('jitter', 'Jitter'),
        ##checkboxInput('smooth', 'Smooth'),
        
        ##selectInput('facet_row', 'Facet Row', c(None='.', names(dataset))),
        ##selectInput('facet_col', 'Facet Column', c(None='.', names(dataset)))
    ),
    
    mainPanel(
        #p(em("Documentation:",a("Name of app",href="doc.html"))),
        p(em("documentation:",a("read here for more information",href="https://github.com/lcindy/DevelopingDataProducts/blob/master/doc.md"))),
        #plotOutput('newplot'),
        h3('Calculated Tip'),
        verbatimTextOutput("calc_tip"),
        h3('Total After Tip'),
        verbatimTextOutput("calc_total"),
        h3('Per Person'),
        verbatimTextOutput("PerPerson")
        
        
    )
    
    
))