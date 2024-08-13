

dados_carros <- mtcars

#DIAGRAMA DE DISPERSÃO

ggplot(data = dados_carros, aes(x = hp, y = mpg)) + geom_point(size = 3) +
  theme_classic() + xlab("HP") + ylab("MPG") + geom_smooth(method = "lm", se = FALSE)


#COEFICIENTE DE CORRELAÇÃO LINEAR

cor(dados_carros$hp, dados_carros$mpg)

#AJUSTE NO MODELO DE REGRESSÃO

modelo_2 <- lm(formula = mpg ~ hp, data = dados_carros)
summary(modelo_2)

modelo_1 <- lm(formula = hp ~ mpg, data = dados_carros)
summary(modelo_1)


#HOMOCEDASTICIDADE DOS RESÍDUOS

plot(dados_carros$hp, rstandard(modelo_1), xlab = "mpg", ylab = "hp")
abline(0,0)

#PREDIÇAO PARA UM NOVO VALOR

novo_dado <- data.frame(hp = 200)
predict(modelo_2, novo_dado)