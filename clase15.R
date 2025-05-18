datos <- scan("archivo_clase_155.txt")
1/mean(datos)

estimadores_boot <- c()
for (i in 1:10000){
  t100i <- 1/mean(sample(datos, 100, TRUE))
  estimadores_boot <- c(estimadores_boot, t100i)
}
hist(estimadores_boot, prob =TRUE)

Oobs <- 1/mean(datos)
estimadores_bootparam <- c()
for (i in 1:10000){
  t100i <- 1/mean(rexp(100,Oobs))
  estimadores_bootparam <- c(estimadores_bootparam, t100i)
}
hist(estimadores_bootparam, prob =TRUE)
