#GRÁFICO DE CORRELAÇÃO

dados_Boston <- MASS::Boston

?MASS::Boston

ggplot(data = dados_Boston, aes(x = rm, y = medv)) + geom_point() + theme_classic() +xlab("Numero de quartos") +
  ylab("Valor de venda (milhares de dolares)") + geom_smooth(method = "lm", se = FALSE)


#COEFICIENTE PARA CORRELAÇÃO LINEAR PRA RM E MEDV

cor(dados_Boston$rm, dados_Boston$medv)

install.packages("corrplot")
library("corrplot")

#MATRIZ DE CORRELAÇOES

M <- cor(dados_Boston)
corrplot(M, method = "number")