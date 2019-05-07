
#vamos refazer o exercicio de salvar uma base do R como .csv

  #escrevendo
    #antigo
      write.csv(mtcars, file = "aulaR_dados.csv")
    #novo
      write_csv(mtcars, path = "aulaR_dados.csv")
    #vantagens do novo: mais rápido, tem mais opções, e
    #tem o msm padrão de sintaxe de várias outras funções do tidyverse  
  
  #lendo
    #antigo
      read.csv("aulaR_dados.csv") 
    #novo
      read_csv("aulaR_dados.csv") 
    #vantagens do novo: além das citadas no write_csv, note que o arquivo 
    #lido já está no formato tidy, ou seja, mais organizado   
  
#excel
  #escrevendo 
    #eu costumo utilizar a biblioteca openxlsx para escrever excel
    install.packages("openxlsx")
    library(openxlsx)
    write.xlsx(mtcars, file = "aulaR_dados.xlsx")
  #lendo    
    #costumo usar a biblioteca readxl, do tidyverse
    library(readxl)
    read_excel("aulaR_dados.xlsx")
    
  #lembrando que para ver + opções de parâmetros das funções é só consultar o help