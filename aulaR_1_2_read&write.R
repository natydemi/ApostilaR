
#Utilizando uma das bases de dados do R
  mtcars
  #para ela aparecer na janela 'Environment' do RStudio
  data("mtcars")

#Salvando estes dados como um arquivo .csv
  write.csv(mtcars, file = "aulaR_dados.csv")
  
  #onde o arquivo foi salvo? No seu diretório:
  getwd()
  
  #quer salvar o arquivo em outro lugar?
    #coloca o endereço antes do nome do arquivo 
      #no caso do windowns utilizando barra normal: /
      write.csv(mtcars, file = "C:/Users/aulaR_dados.csv")
      #ou duas barras invertidas: \\
      write.csv(mtcars, file = "C:\\Users\\aulaR_dados.csv")
    #ou altera o diretório de trabalho 
      setwd("C:/Users")
      
#lendo o arquivo .csv que salvamos 
    read.csv("aulaR_dados.csv")   
    #para que ele fique salvo em um objeto
    dados <- read.csv("aulaR_dados.csv")  

#e o excel?
    #precisa instalar alguma biblioteca, existem várias disponíveis
    #vamos utilizar a tidyverse que tem um apanhado de bibliotecas uteis