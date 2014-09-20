library(shiny)
library(quantmod)

CalcTip <- function(TotalPmt,TipPercent) {
    TotalPmt*TipPercent/100
}

CalcTotal <- function(TotalPmt,TipPercent) {
    TotalPmt*(1+TipPercent/100)
}

CalcPerPerson <- function(TotalPmt,TipPercent,NumPPL) {
    TotalPmt*(1+TipPercent/100)/NumPPL
}

shinyServer(
    function(input, output) {
        
        
        output$calc_tip<-renderPrint({CalcTip(input$TotalPMT,input$TipPercent)})
        output$calc_total<-renderPrint({CalcTotal(input$TotalPMT,input$TipPercent)})
        output$PerPerson<-renderPrint({CalcPerPerson(input$TotalPMT,input$TipPercent,input$TotalPPL)})
    }
)
