# Vamos a considerar por un lado cada distrito de la ciudad de Rosario de acuerdo 
# a la divisi�n territorial establecida por la Municipalidad, y por otro lado 
# tomaremos la divisi�n de la ciudad en fracciones censales, de acuerdo a las 
# divisiones consideradas en el Censo Nacional de Poblaci�n, Hogares y Viviendas 
# 2001 (ya que para 2010 dicha informaci�n no se encuentra disponible). Estas 
# divisiones pueden visualizarse en el mapa de Rosario [Infomapa Rosario](http
# ://infomapa.rosario.gov.ar/).

# En base a estas divisiones definimos los siguientes vectores num�ricos, en donde 
# cada uno de ellos se corresponde con un distrito (y por esto se les asigna su 
# nombre), y cada elemento (n�mero) de un vector se corresponde con el n�mero de 
# fracci�n:
     
centro <- c(16:29, 36:40, 56, 80:81)
noroeste <- c(10:13, 31:32)
norte <- c(3:9, 14:15)
oeste <- c(30, 33:35, 48:49)
sudoeste <- c(46:47, 50, 52)
sur <- c(41:45, 51, 53:55)

# Ahora vamos a definir algo que en programaci�n de llama "lista". Una lista es 
# muy parecida a un vector, con la diferencia que un elemento de una lista puede 
# ser cualquier cosa, ya sea un n�mero, palabra, vector, o bien una matriz, etc.

# Luego vamos a crear una lista de manera tal que cada vector de fracciones de 
# un distrito sea un elemento de la misma. Lo realizamos de la siguiente manera:
    
lista_distrito <- list(centro=centro, noroeste=noroeste, norte=norte, 
                       oeste=oeste, sudoeste=sudoeste, sur=sur)

# Esta lista tiene una longitud igual a 6, consider�ndose como elemento a un 
# vector:
     
length(lista_distrito)

# Podemos verificar que el primer elemento de la lista corresponde al vector de 
# fracciones del distrito centro:
     
lista_distrito[1]

# Ahora vamos a extraer una muestra, que va a estar conformada por 12 fracciones 
# censales (dos fracciones por distrito).

# La siguiente sintaxis se encarga de extraer la muestra mediante los siguientes 
# pasos:
     
# 1. Crea una matriz de caracteres vacia, llamada "muestra".
# 2. Comienza un proceso iterativo a trav�s de los elementos de la lista, es 
# decir, a trav�s de los distritos.
# 3. Extrae el nombre del distrito.
# 4. Extrae una muestra aleatoria simple sin reemplazo de dos fracciones del 
# distrito.
# 5. Concatena horizontalmente pasos 3 y 4.
# 6. Concatena verticalmente paso 5 a trev�s de los distintos distritos.

muestra <- character()
for (i in 1:length(lista_distrito)) {
     distrito <- names(lista_distrito)[i]
     fracciones <- sample(lista_distrito[[i]], 2)
     muestra_distrito <- c(distrito, fracciones)
     muestra <- rbind(muestra,muestra_distrito)
}

# Imprimimos elegantemente la muestra de fracciones seleccionada, por distrito:
     
rownames(muestra) <- NULL
colnames(muestra) <- c("Distrito", "Fracci�n 1", "Fracci�n 2")
muestra <- as.data.frame(muestra)
muestra