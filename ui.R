#########################################################################################################

#########################################################################################################
source("data.R")
source("definitions.R")
source("funcs.R")


shinyUI(navbarPage("Googly : yorkr analyzes IPL!",
                   # Batsman tab
                   tabPanel("IPL batsman",
                            headerPanel('Analyze IPL batsman performances'),
                            sidebarPanel(
                                selectInput('batsmanFunc', 'Select function', IPLBatsmanFuncs),
                                selectInput('batsman', 'Select batsman', IPLBatsmen,selectize=FALSE, size=20)
                            ),
                            mainPanel(
                                plotOutput('batsmanPlot'),
                                column(7, offset=4,
                                       tags$h5((tags$i("hqr052"))),
                                       tags$h5((tags$i("IPL Data Visualization"))),
                                       tags$h6("CS IA")
                                )
                            )
                            
                   ),
                   # Bowlers tab
                   tabPanel("IPL bowlers",
                            
                            headerPanel('Analyze IPL bowler performances'),
                            
                            sidebarPanel(
                                selectInput('bowlerFunc', 'Select function', IPLBowlerFuncs),
                                selectInput('bowler', 'Select IPL bowler', IPLBowlers,selectize=FALSE, size=20)
                                
                                
                            ),
                            mainPanel(
                                plotOutput('bowlerPlot'),
                                column(7, offset=4,
                                       tags$h5((tags$i("hqr052"))),
                                       tags$h5((tags$i("IPL Data Visualization"))),
                                       tags$h6("CS IA")
                                )
                            )
                            
                   ),
                   # Analyze IPL matches
                   tabPanel("IPL Match",
                            headerPanel('Analyze an IPL match'),
                            sidebarPanel(
                                selectInput('matchFunc', 'Select match function', IPLMatchFuncs),
                                selectInput('match', 'Select IPL match ', IPLMatches,selectize=FALSE, size=20),
                                uiOutput("selectTeam")
                                
                            ),
                            mainPanel(
                                plotOutput('IPLMatchPlot'),
                                column(7, offset=4,
                                       tags$h5((tags$i("hqr052"))),
                                       tags$h5((tags$i("IPL Data Visualization"))),
                                       tags$h6("CS IA")
                                )
                            )
                            
                   ),
                   # Analyze 2 Teams IPL matches
                   tabPanel("Head to head",
                            headerPanel('Head-to-head between 2 IPL teams'),
                            sidebarPanel(
                                selectInput('matches2TeamFunc', 'Select function', IPLMatches2TeamsFuncs),
                                selectInput('match2', 'Select matches', IPLMatches2Teams,selectize=FALSE, size=20),                                uiOutput("selectTeam2")
                                
                            ),
                            mainPanel(
                                plotOutput('IPLMatch2TeamsPlot'),
                                column(7, offset=4,
                                       tags$h5((tags$i("hqr052"))),
                                       tags$h5((tags$i("IPL Data Visualization"))),
                                       tags$h6("CS IA")
                                )
                            ) 
                           
                   ),
                   # Analyze IPL Team Overall Perf
                   tabPanel("Overall Performance",
                            headerPanel("Analyze IPL team's overall performance"),
                            sidebarPanel(
                                selectInput('overallperfFunc', 'Select function', IPLTeamOverallPerfFunc),
                                selectInput('teamMatches', 'Select the team', IPLTeamsAll,selectize=FALSE, size=13),
                                uiOutput("Rank")
                            ),
                            mainPanel(
                                plotOutput('IPLTeamPerfOverall'),
                                column(7, offset=4,
                                       tags$h5((tags$i("hqr052"))),
                                       tags$h5((tags$i("IPL Data Visualization"))),
                                       tags$h6("CS IA")
                                )
                            ) 
                            
                   ),
                  
                   tabPanel("About",
                            h3("Analyzing IPL Players, teams and matches"),
                            p("This is my computer science IA which visualizes IPL data.")
                   )
                   
))
