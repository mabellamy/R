library(readr)
library(dplyr)
library(ggplot2)

usaData <- read_csv("https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-counties.csv")
head(usaData)

viz1 <- ggplot(data=usaData, aes(x=date, y=cases)) +
        geom_point(aes(color=cases),alpha = .75)

viz1


viz2 <- ggplot(data = usaData, aes(x=date, y=deaths)) +
        geom_point(aes(color=deaths), alpha = .65)
        

viz2
