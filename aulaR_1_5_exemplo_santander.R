
#Libraries -----
#toolBox
if(!require("tidyverse")){install.packages("tidyverse"); library(tidyverse)}
library(readxl); library(lubridate)


#List files -----

#list + recursive
  list.files("Data", full.names = T, pattern='*.xlsx', recursive=T) %>%
    walk(print) 

#list + maps
  list.files("Data") %>% 
    map( ~ list.files(paste0("Data/",.x), full.names = T))

  # [1] "bg"                 
  # [2] "cac"                
  # [3] "Dados-Santander.zip"
  # [4] "Dicionário.xlsx"    
  # [5] "mp"                 
  # [6] "pe" 
  
#Read -----

  #dictionary
  dt_Dec <- "Data/Dicionário.xlsx" %>% 
    readxl::read_excel() 
  
  #generic file
  list.files("Data/bg",full.names = T)[1] %>% 
    readxl::read_excel() %>% 
    glimpse

  #all files
  list.files("Data/bg", full.names = T, pattern='*.xlsx', recursive = T) %>%
    map(read_excel) %>% 
    walk(glimpse)
  




