########################################
#PACOTES
#install.packages("ggplot2")
library(ggplot2)
########################################

#DIAGRAMA DE DISPERSÃO

ggplot(data = distancia, aes(x = idade, y = distancia)) + geom_point(size = 3) +
  theme_classic() + xlab("Idade") + ylab("Distância (m)") + geom_smooth(method = "lm", se = FALSE)

#COEFICIENTE DE CORRELAÇÃO LINEAR

  cor(distancia$idade, distancia$distancia)
  
  #ANÁLISE DE REGRESSÃO (REGRESSÃO LINEAR SIMPLES)
  # 1) Diagrama de dispersão
  # 2) Coeficiente de correlação
  # 3) Ajuste da reta (encontra alfa e beta da reta)
  # 4) Verifica a qualidade do modelo
  # - Coeficiente de determinação (R²)
  
  #AJUSTE NO MODELO DE REGRESSÃO
  
  modelo_1 <- lm(formula = distancia ~ idade, data = distancia)
  
  #MOSTRA RESULTADOS DO MODELO
  summary(modelo_1)
  
  #INTERVALO DE CONFANÇA PARA OS PARÂMETROS
  
  confint(modelo_1)
  
  #PREDIÇAO PARA UM NOVO VALOR
  
  novo_dado <- data.frame(idade = 24)
  predict(modelo_1, novo_dado)
  
  #ANÁLISE DE RESÍDUOS
  
  plot(modelo_1)
  
  #HOMOCEDASTICIDADE DOS RESÍDUOS