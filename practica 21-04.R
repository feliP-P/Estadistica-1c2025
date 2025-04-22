intervalo <- function(datos,vari,nivel){
  prom <-mean(datos)
  z <- qnorm((1-nivel)/2,lower.tail = FALSE)
  ic <-c(prom - (z*vari/sqrt(length(datos))), prom + (z*vari/sqrt(length(datos))) )
  ic
}

datos_normales <- rnorm(5, mean =4, sd=3)

intervalo(datos_normales,3,0.7)

correctos <- 0
for(i in 1:1000){
  datos_normales <- rnorm(5, mean =4, sd=3)
  interval <- intervalo(datos_normales,3,0.95)
  
  if(4 < interval[2] & 4>interval[1]){
    correctos = correctos + 1 
  }
}
correctos/1000
