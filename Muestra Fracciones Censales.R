centro <- c(16:29, 36:40, 56, 80:81)
noroeste <- c(10:13, 31:32)
norte <- c(3:9, 14:15)
oeste <- c(30, 33:35, 48:49)
sudoeste <- c(46:47, 50, 52)
sur <- c(41:45, 51, 53:55)

lista_distrito <- list(centro=centro, noroeste=noroeste, norte=norte, oeste=oeste, sudoeste=sudoeste, sur=sur)

length(lista_distrito)

lista_distrito[1]

muestra <- character()
for (i in 1:length(lista_distrito)) {
     distrito <- names(lista_distrito)[i]
     fracciones <- sample(lista_distrito[[i]], 2)
     muestra_distrito <- c(distrito, fracciones)
     muestra <- rbind(muestra,muestra_distrito)
}

rownames(muestra) <- NULL
colnames(muestra) <- c("Distrito", "Fracción 1", "Fracción 2")
muestra <- as.data.frame(muestra)
muestra