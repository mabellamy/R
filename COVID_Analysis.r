library(readr)
library(dplyr)
library(tidyr)
library(ggplot2)

usaData <- read_csv("https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-counties.csv")
usData <- usaData %>% group_by(date, county, state)
print(usData)

stateSumCasesData <- usData %>% group_by(date, state) %>% summarize(stateCases=sum(cases))
print(stateSumCasesData)

stateSumDeathsData <- usData %>% group_by(date, state) %>% summarize(stateDeaths = sum(deaths))
print(stateSumDeathsData)

viz1 <- ggplot(data=stateSumCasesData, aes(x=date, y=stateCases)) +
        geom_point(aes(color=state),alpha = .75) 
        

viz1


viz2 <- ggplot(data = stateSumDeathsData, aes(x=date, y=stateDeaths)) +
        geom_point(aes(color=state), alpha = .65) 
        
        

viz2
