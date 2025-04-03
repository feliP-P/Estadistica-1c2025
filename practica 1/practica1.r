deberdi <- read.csv("Debernardi.csv")
tabla <- table(deberdi$diagnosis)
tablafrec <- prop.table(x = tabla)
tabla
barplot(tablafrec)

Titanic <- read.csv("datos_titanic.csv")
tablaTitanic <- table(Titanic$Sex, Titanic$Survived)
tablaTitanic2 <- table(Titanic$Sex[Titanic$Survived == 1])
tablaTitanic
tablaTitanic2
tablaTitanicfrec <- prop.table(x = tablaTitanic)
tablaTitanicfrec
sexoTitani <- table(Titanic$Sex)
sexoTitani
sexoTitanic <- prop.table(x = sexoTitani)
sexoTitanic <- prop.table(x = table(Titanic$Sex))
sexoTitanic
supervivencia <- prop.table(x =tablaTitanic2)
supervivencia


tablaClases <- table(Titanic$Survived, Titanic$Pclass)
tablaClases
survivalp1 <- table(Titanic$Survived[Titanic$Pclass == 1])
survival1 <- prop.table(x = survivalp1)
survival <- prop.table(x = tablaClases,2)
survival
barplot(survival)

barplot(survival, 
        beside = TRUE,               # Barras una al lado de la otra
        col = c("red", "green"),     # Colores para no sobrevivientes y sobrevivientes
        legend = rownames(survival),  # Agregar leyenda
        main = "Distribución de Supervivencia por Clase (Pclass)", 
        xlab = "Clase Pclass", 
        ylab = "Frecuencia",
        args.legend = list(title = "Supervivencia", x = "topright"),
        ylim= c(0,1))
