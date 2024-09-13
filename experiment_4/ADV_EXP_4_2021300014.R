#libraries----
library(shiny)
library(shinydashboard)
library(ggplot2)
library(plotly)
library(leaflet)

#DATASETS----
data1<-read.csv("C:\\Users\\aksha\\college_acad\\ADV_BATCH_G_2021300014\\experiment_4\\Crime Data India 2016\\Crime Data India 2016\\CRIME AGAINST CHILDREN.csv")
data2<-read.csv("C:\\Users\\aksha\\college_acad\\ADV_BATCH_G_2021300014\\experiment_4\\Crime Data India 2016\\Crime Data India 2016\\CRIME AGAINST WOMEN.csv")
data3<-read.csv("C:\\Users\\aksha\\college_acad\\ADV_BATCH_G_2021300014\\experiment_4\\Crime Data India 2016\\Crime Data India 2016\\CRIME AGAINST SC.csv")
data4<-read.csv("C:\\Users\\aksha\\college_acad\\ADV_BATCH_G_2021300014\\experiment_4\\Crime Data India 2016\\Crime Data India 2016\\CRIME AGAINST SENIOR CITIZENS.csv")
#smartcities <- read.csv("C:\\Users\\91965\\Documents\\BDA SEM II\\Multivariate Statistics\\R Project II\\FINAL_DATA_2016\\FINAL_DATA_2016\\smart1.csv")
#smartcities$State.UT <- as.character(smartcities$State.UT)

#Dataset_Manipulations
data2['Ratio']<-data2['Persons.Arrested...Male']/data2['Persons.Arrested...Female']
#CRIME AGAINST CHILDREN----
#Plot 1 : Murder Cases of Children
cp1<-plot_ly(x=data1$State.UT..Col.2.,y=data1$Murder..Section.302.IPC....V..Col.4.,data=data1,type="bar") %>%
  layout(title = "Murder Cases of Children",
         xaxis = list(title = "State/ Union Terrirtory",
                      zeroline = FALSE),
         yaxis = list(title = "Number of Murder Cases ",
                      zeroline = FALSE))
#Plot 2 : Abetment of Suicide of Children
cp2<-plot_ly(x=data1$State.UT..Col.2.,y=data1$Abetment.of.suicide.of.child..Section.305.IPC....V..Col.7.,data=data1,type="bar") %>%
  layout(title = "Abetment of Suicide of Children",
         xaxis = list(title = "State/ Union Terrirtory",
                      zeroline = FALSE),
         yaxis = list(title = "Numberof Abetments ",
                      zeroline = FALSE))
#Plot 3 : Attempts to commit murder of Children
cp3<-plot_ly(x=data1$State.UT..Col.2.,y=data1$Attempt.to.commit.Murder..Section.307.IPC....V..Col.10.,data=data1,type="bar") %>%
  layout(title = "Attempts to commit murder of Children",
         xaxis = list(title = "State/ Union Terrirtory",
                      zeroline = FALSE),
         yaxis = list(title = "Number of attempts ",
                      zeroline = FALSE))
#Plot 4: Infanticides
cp4<-plot_ly(x=data1$State.UT..Col.2.,y=data1$Infanticide..Section.315.IPC....V..Col.13.,data=data1,type="bar") %>%
  layout(title = "Infanticides",
         xaxis = list(title = "State/ Union Terrirtory",
                      zeroline = FALSE),
         yaxis = list(title = "Number of Infanticides ",
                      zeroline = FALSE))
#Plot 5:Foeticides
cp5<-plot_ly(x=data1$State.UT..Col.2.,y=data1$Foeticide..Section.316.IPC....V..Col.16.,data=data1,type="bar") %>%
  layout(title = "Foeticides",
         xaxis = list(title = "State/ Union Terrirtory",
                      zeroline = FALSE),
         yaxis = list(title = "Number of Foeticides ",
                      zeroline = FALSE))
#Plot 6: Kidnapping Abductions
cp6<-plot_ly(x=data1$State.UT..Col.2.,y=data1$Kidnapping...Abduction.of.Children...V..Col.22.,data=data1,type="bar") %>%
  layout(title = "Kidnapping Abductions",
         xaxis = list(title = "State/ Union Terrirtory",
                      zeroline = FALSE),
         yaxis = list(title = "Number of Kidnapping Abductions ",
                      zeroline = FALSE))
#Plot 7: Human Trafficking
cp7<-plot_ly(x=data1$State.UT..Col.2.,y=data1$Human.Trafficking..Sections.370...370A.IPC....V..Col.25.,data=data1,type="bar") %>%
  layout(title = "Human Trafficking",
         xaxis = list(title = "State/ Union Terrirtory",
                      zeroline = FALSE),
         yaxis = list(title = "Number of Cases ",
                      zeroline = FALSE))
#Plot 8: Selling of Minors for Prostitution
cp8<-plot_ly(x=data1$State.UT..Col.2.,y=data1$Selling.of.minors.for.prostitution..Sec.372.IPC....V..Col.28.,data=data1,type="bar") %>%
  layout(title = "Selling of Minors for Prostitution",
         xaxis = list(title = "State/ Union Terrirtory",
                      zeroline = FALSE),
         yaxis = list(title = "Number of Cases ",
                      zeroline = FALSE))

#CRIME AGAINST WOMEN----
#Plot 1: Males:Females being arrested
wp1<-plot_ly(x=data2$State.UT,y=data2$Ratio,data=data2,type="bar") %>%
  layout(title = "Ratio of Males to Females being arrested for Crimes Against Women",
         xaxis = list(title = "State/ Union Terrirtory",
                      zeroline = FALSE),
         yaxis = list(title = "Ratio of Males and Females ",
                      zeroline = FALSE)) 
#Plot 2: Acquitted Males
wp2<-plot_ly(x=data2$State.UT,y=data2$Persons.Acquitted...Male,data=data2,type="bar") %>%
  layout(title = "Acquitted Males for Crimes Against Women",
         xaxis = list(title = "State/ Union Terrirtory",
                      zeroline = FALSE),
         yaxis = list(title = "Number of Acquitted  Males",
                      zeroline = FALSE))

#Plot 3: Acquitted Females
wp3<-plot_ly(x=data2$State.UT,y=data2$Persons.Acquitted...Female,data=data2,type="bar") %>%
  layout(title = "Acquitted Females for Crimes Against Women",
         xaxis = list(title = "State/ Union Terrirtory",
                      zeroline = FALSE),
         yaxis = list(title = "Number of Acquitted Females",
                      zeroline = FALSE))

#Plot 4: Lack of Evidence
wp4<-plot_ly(x=data2$State.UT,y=data2$Final.Report...True.but.Insufficient.Evidence..Col.10.,data=data2,type="bar") %>%
  layout(title = "Lack of Evidences for the cases which are true",
         xaxis = list(title = "State/ Union Terrirtory",
                      zeroline = FALSE),
         yaxis = list(title = "Number of Cases",
                      zeroline = FALSE))
#Plot 5: Cases Not Concluded
wp5<-plot_ly(x=data2$State.UT,y=data2$Cases_Not_Concluded,data=data2,type="bar") %>%
  layout(title = "Cases Not Concluded",
         xaxis = list(title = "State/ Union Terrirtory",
                      zeroline = FALSE),
         yaxis = list(title = "Number of Cases",
                      zeroline = FALSE))
#Plot 6: Mistake of fact( to be done)
wp6<-plot_ly(x=data2$State.UT,y=data2$Final.Report...Mistake.of.Fact..Col.12.,data=data2,type="bar") %>%
  layout(title = "Cases of Mistake of fact",
         xaxis = list(title = "State/ Union Terrirtory",
                      zeroline = FALSE),
         yaxis = list(title = "Number of Cases",
                      zeroline = FALSE))
#Plot 7: Non-Cognizable ( to be done)
wp7<-plot_ly(x=data2$State.UT,y=data2$Final.Report...Non.Cognizable..Col.13.,data=data2,type="bar") %>%
  layout(title = "Cases of Non-Cognizable offences",
         xaxis = list(title = "State/ Union Terrirtory",
                      zeroline = FALSE),
         yaxis = list(title = "Number of Cases",
                      zeroline = FALSE))
#Plot *: Cases Compounded ( to be done)
wp8<-plot_ly(x=data2$State.UT,y=data2$Cases.Compounded..Col.9.,data=data2,type="bar") %>%
  layout(title = "Compounding Offenses",
         xaxis = list(title = "State/ Union Terrirtory",
                      zeroline = FALSE),
         yaxis = list(title = "Number of Cases",
                      zeroline = FALSE))
#CRIME AGAINST SENIOR CITIZENS----
#Plot 1: Murder of Senior Citizens
ep1<-plot_ly(x=data4$State.UT..Col.2.,y=data4$Murder..Sec.302.IPC...Col.4....V,data=data4,type="bar") %>%
  layout(title = "Murder of Senior Citizens",
         xaxis = list(title = "State/ Union Terrirtory",
                      zeroline = FALSE),
         yaxis = list(title = "Number of Cases",
                      zeroline = FALSE)) 
#Plot 2: Grevious Hurt of Senior Citizens
ep2<-plot_ly(x=data4$State.UT..Col.2.,y=data4$Grievous.Hurt..Sec.325..326..326A...326B.IPC...Col.16....V,data=data4,type="bar") %>%
  layout(title = "Grevious Hurt of Senior Citizens",
         xaxis = list(title = "State/ Union Terrirtory",
                      zeroline = FALSE),
         yaxis = list(title = "Number of Cases",
                      zeroline = FALSE)) 
#Plot 3: Rape of Senior Citizens
ep3<-plot_ly(x=data4$State.UT..Col.2.,y=data4$Rape..Sec..376.IPC...Col.19....V,data=data4,type="bar") %>%
  layout(title = "Rape of Senior Citizens",
         xaxis = list(title = "State/ Union Terrirtory",
                      zeroline = FALSE),
         yaxis = list(title = "Number of Cases",
                      zeroline = FALSE)) 
#Plot 4: Robbery of Senior Citizens
ep4<-plot_ly(x=data4$State.UT..Col.2.,y=data4$Robbery..Sec.392.to.394.IPC...Col.25....V,data=data4,type="bar") %>%
  layout(title = "Rape of Senior Citizens",
         xaxis = list(title = "State/ Union Terrirtory",
                      zeroline = FALSE),
         yaxis = list(title = "Number of Cases",
                      zeroline = FALSE)) 
#Plot 5: Lack of Evidence
ep5<-plot_ly(x=data4$State.UT..Col.2.,y=data4$Final.Report...True.but.Insufficient.Evidence..Col.9.,data=data4,type="bar") %>%
  layout(title = "Lack of Evidence for Cases which are True",
         xaxis = list(title = "State/ Union Terrirtory",
                      zeroline = FALSE),
         yaxis = list(title = "Number of Cases",
                      zeroline = FALSE))
#CRIME AGAINST SC----
#Plot 1: Murder of SC
sp1<-plot_ly(x=data3$State.UT..Col.2.,y=data3$SC.ST.Prevention.of.Atrocities..Act.r.w.IPC...Murder..Section.302.IPC....V..Col.4.,data=data3,type="bar") %>%
  layout(title = "Murder of Scheduled Castes",
         xaxis = list(title = "State/ Union Terrirtory",
                      zeroline = FALSE),
         yaxis = list(title = "Number of Cases ",
                      zeroline = FALSE))
#Plot 2: Sexual Harrasement of SC Women
sp2<-plot_ly(x=data3$State.UT..Col.2.,y=data3$SC.ST.Prevention.of.Atrocities..Act.r.w.IPC...Assault.on.SC.Women.to.Outrage.Her.Modesty...Sexual.Harassment..Section.354A.IPC....V..Col.13B.,data=data3,type="bar") %>%
  layout(title = "Sexual Harrasement of SC Women",
         xaxis = list(title = "State/ Union Terrirtory",
                      zeroline = FALSE),
         yaxis = list(title = "Number of Cases ",
                      zeroline = FALSE))

#Plot 3: Rape of SC women
sp3<-plot_ly(x=data3$State.UT..Col.2.,y=data3$SC.ST.Prevention.of.Atrocities..Act.r.w.IPC...Rape..Section.376.IPC....V..Col.22.,data=data3,type="bar") %>%
  layout(title = "Rape of SC Women",
         xaxis = list(title = "State/ Union Terrirtory",
                      zeroline = FALSE),
         yaxis = list(title = "Number of Cases ",
                      zeroline = FALSE))
#Plot 4: Rioting 
sp4<-plot_ly(x=data3$State.UT..Col.2.,y=data3$
               SC.ST.Prevention.of.Atrocities..Act.r.w.IPC...Rioting..Sections.147.to.151.IPC....V..Col.28.,data=data3,type="bar") %>%
  layout(title = "Rioting",
         xaxis = list(title = "State/ Union Terrirtory",
                      zeroline = FALSE),
         yaxis = list(title = "Number of Cases ",
                      zeroline = FALSE))
#plot 5: Robbery
sp5<-plot_ly(x=data3$State.UT..Col.2.,y=data3$SC.ST.Prevention.of.Atrocities..Act.r.w.IPC...Robbery..Section.392.to.394.IPC....V..Col.31.,data=data3,type="bar") %>%
  layout(title = "Robbery of Scheduled Castes",
         xaxis = list(title = "State/ Union Terrirtory",
                      zeroline = FALSE),
         yaxis = list(title = "Number of Cases ",
                      zeroline = FALSE))

ui<-dashboardPage(
  dashboardHeader(title="Akshat Biniwale"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Description",tabName = "home", icon = icon("arrow-circle-right")),
      menuItem("Data Analysis",tabName = "data",icon = icon("envelope"))
    )),
  dashboardBody(
    tabItems(
      tabItem(
        tabName ="home",h1("CRIME DATA ANALYSIS"),
        helpText("Crime is a very old concept and it is transmitted to the society from generation to generation. Crime produces law and order situation. It is a social evil. It is generated by the society and the society also suffers a lot because of crime committed by its members. The rising wave of crime to-day has caused alarm in the public."),
        helpText("Nobody is safe today. Criminal activities are on rise through out the world today. With the development in science and technology, criminals are using scientific techniques while committing the crime and police has been baffled by the techniques used."),
        helpText("Thousands of crimes are committed every day, and probably hundreds are occuring right now in the world. Someone somewhere will be killed, robbed and raped until you read this article to its end. Without a doubt, crime can be seen as the plagues of society. No matter what is done, nothing can really stop it."),
        helpText("There is a rapid increase in the crime rate in our Indian economy. These crimes are caused due to the unpunished offenders. The problem of crime has been a relentless menace to society. From petty theft to robbery with violence, crime continues to be a migraine to the government of the day, the increase in crime rates over many countries is minatory and testament of the myriad of challeges that face society."),
        helpText("Our project aims in Analysing the Crime Data of India of the year 2016. ")
        
      ),
      tabItem(tabName = "data",h1("Exploratory Data Analysis : Plots"),
              fluidRow(column(9,selectInput("cr","Choose the Crime:",choices=c("Crime Against Women","Crime Against Children","Crime Against Senior Citizens","Crime Against SC")))),
              fluidRow(plotlyOutput("Plot1"),br(),br(),br(),plotlyOutput("Plot2"),br(),br(),br(),plotlyOutput("Plot3")))
    )
  ),
  skin=c("green"))


#server

server<-function(input,output,session){
  
  
  output$my_leaf1 <- renderLeaflet({
    
    leaflet(data = smartcities) %>% setView(lng = 80, lat = 20, zoom = 4)%>% addTiles() %>% addMarkers(~Longitude, ~Latitude, popup = ~paste(sep = "<br/>", paste(tags$b("State.UT"), State.UT),paste(tags$b("Crime_rate"), Crime_rate)))
    
  })
  
  output$Plot1<- renderPlotly({
    
    if(input$cr=="Crime Against Children"){
      subplot(cp4,cp5,cp6,nrows=1,widths=c(1/3,1/3,1/3),shareX = TRUE,shareY = FALSE,titleY = TRUE)%>% 
        layout(title= "PLOTS" ,annotations = list(
          list(x = 0.1 , y = 1.05, text = "Murder Cases of Children", showarrow = F, xref='paper', yref='paper'),
          list(x = 0.5 , y = 1.05, text = "Abetment of Suicide of Children", showarrow = F, xref='paper', yref='paper'),
          list(x = 1 , y = 1.05, text = "Attempts to commit murder of Children", showarrow = F, xref='paper', yref='paper'))
        )
      
    }
    else if(input$cr=="Crime Against Women")
    {
      subplot(wp2,wp3,nrows=1,widths=c(1/2,1/2),shareX = TRUE,shareY = FALSE,titleY = TRUE)%>% 
        layout(title= "PLOTS" ,annotations = list(
          list(x = 0.2 , y = 1.05, text = "Acquitted Males for Crimes Against Women", showarrow = F, xref='paper', yref='paper'),
          list(x = 0.8 , y = 1.05, text = "Acquitted Females for Crimes Against Women", showarrow = F, xref='paper', yref='paper'))
        ) 
    }
    else if(input$cr=="Crime Against SC")
    {
      subplot(sp1,sp3,nrows=1,widths=c(1/2,1/2),shareX = TRUE,shareY = FALSE,titleY = TRUE)%>% 
        layout(title= "PLOTS" ,annotations = list(
          list(x = 0.2 , y = 1.05, text = "Murder of Scheduled Castes", showarrow = F, xref='paper', yref='paper'),
          list(x = 0.8 , y = 1.05, text = "Rape of SC Women", showarrow = F, xref='paper', yref='paper'))
        )
    }
    else if(input$cr=="Crime Against Senior Citizens")
    {
      subplot(ep2,ep3,nrows=1,widths=c(1/2,1/2),shareX = TRUE,shareY = FALSE,titleY = TRUE)%>% 
        layout(title= "PLOTS" ,annotations = list(
          list(x = 0.2 , y = 1.05, text = "Grevious Hurt of Senior Citizens", showarrow = F, xref='paper', yref='paper'),
          list(x = 0.8 , y = 1.05, text = "Rape of Senior Citizens", showarrow = F, xref='paper', yref='paper'))
        ) 
    }
    else{
      return()
    }
  })
  
  output$Plot2<- renderPlotly({
    
    if(input$cr=="Crime Against Children"){
      subplot(cp4,cp5,cp6,nrows=1,widths=c(1/3,1/3,1/3),shareX = TRUE,shareY = FALSE,titleY = TRUE)%>% 
        layout(title= "PLOTS" ,annotations = list(
          list(x = 0.1 , y = 1.05, text = "Infanticides", showarrow = F, xref='paper', yref='paper'),
          list(x = 0.5 , y = 1.05, text = "Foeticides", showarrow = F, xref='paper', yref='paper'),
          list(x = 1 , y = 1.05, text = "Kidnapping Abductions", showarrow = F, xref='paper', yref='paper'))
        )
    }
    else if(input$cr=="Crime Against Women")
    {
      subplot(wp1,wp4,wp5,nrows=1,widths=c(1/3,1/3,1/3),shareX = TRUE,shareY = FALSE,titleY = TRUE)%>% 
        layout(title= "PLOTS" ,annotations = list(
          list(x = 0.1 , y = 1.05, text = "Ratio of Males to Females<br>being arrested for Crimes Against Women", showarrow = F, xref='paper', yref='paper'),
          list(x = 0.5 , y = 1.05, text = "Lack of Evidences for the cases which are true", showarrow = F, xref='paper', yref='paper'),
          list(x = 1 , y = 1.05, text = "Cases Not Concluded", showarrow = F, xref='paper', yref='paper'))
        )
    }
    else if(input$cr=="Crime Against SC")
    {
      plot_ly(x=data3$State.UT..Col.2.,y=data3$SC.ST.Prevention.of.Atrocities..Act.r.w.IPC...Assault.on.SC.Women.to.Outrage.Her.Modesty...Sexual.Harassment..Section.354A.IPC....V..Col.13B.,data=data3,type="bar") %>%
        layout(title = "Sexual Harrasement of SC Women",
               xaxis = list(title = "State/ Union Terrirtory",
                            zeroline = FALSE),
               yaxis = list(title = "Number of Cases ",
                            zeroline = FALSE))
      
    }
    
    else if(input$cr=="Crime Against Senior Citizens")
    {
      subplot(ep4,ep5,nrows=1,widths=c(1/2,1/2),shareX = TRUE,shareY = FALSE,titleY = TRUE)%>% 
        layout(title= "PLOTS" ,annotations = list(
          list(x = 0.2 , y = 1.05, text = "Robbery of Senior Citizens", showarrow = F, xref='paper', yref='paper'),
          list(x = 0.8 , y = 1.05, text = "Lack of Evidence for Cases which are True", showarrow = F, xref='paper', yref='paper'))
        ) 
    }
    else{
      return()
    }
  })
  
  output$Plot3<- renderPlotly({
    
    if(input$cr=="Crime Against Children"){
      subplot(cp7,cp8,nrows=1,widths=c(1/2,1/2),shareX = TRUE,shareY = FALSE,titleY = TRUE)%>% 
        layout(title= "PLOTS" ,annotations = list(
          list(x = 0.2 , y = 1.05, text = "Human Trafficking", showarrow = F, xref='paper', yref='paper'),
          list(x = 0.8 , y = 1.05, text = "Selling of Minors for Prostitution", showarrow = F, xref='paper', yref='paper'))
        )
      
      
    }
    else if(input$cr=="Crime Against Women")
    {
      subplot(wp6,wp7,wp8,nrows=1,widths=c(1/3,1/3,1/3),shareX = TRUE,shareY = FALSE,titleY = TRUE)%>% 
        layout(title= "PLOTS" ,annotations = list(
          list(x = 0.1 , y = 1.05, text = "Cases of Mistake of fact", showarrow = F, xref='paper', yref='paper'),
          list(x = 0.5 , y = 1.05, text = "Cases of Non-Cognizable offences", showarrow = F, xref='paper', yref='paper'),
          list(x = 1 , y = 1.05, text = "Compounding Offenses", showarrow = F, xref='paper', yref='paper'))
        ) 
    }
    else if(input$cr=="Crime Against SC")
    {
      subplot(sp4,sp5,nrows=1,widths=c(1/2,1/2),shareX = TRUE,shareY = FALSE,titleY = TRUE)%>% 
        layout(title= "PLOTS" ,annotations = list(
          list(x = 0.2 , y = 1.05, text = "Rioting", showarrow = F, xref='paper', yref='paper'),
          list(x = 0.8 , y = 1.05, text = "Robbery of Scheduled Castes", showarrow = F, xref='paper', yref='paper'))
        ) 
    }
    
    else if(input$cr=="Crime Against Senior Citizens")
    {
      plot_ly(x=data4$State.UT..Col.2.,y=data4$Murder..Sec.302.IPC...Col.4....V,data=data4,type="bar") %>%
        layout(title = "Number of Murder Cases of Senior Citizens",
               xaxis = list(title = "State/ Union Terrirtory",
                            zeroline = FALSE),
               yaxis = list(title = "Number of Cases",
                            zeroline = FALSE)) 
      
    }
    else{
      return()
    }
  })
  
}
shinyApp(ui,server)