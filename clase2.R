tabla <- read.csv("lamparas.csv")
media <- mean(tabla$lamparas)
sqsum <- (sum(tabla$lamparas**2))/20

lamda <- media/(sqsum - media**2)
alpha <- media**2/(sqsum - media**2)
lamda
alpha
