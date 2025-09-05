Funcion dato_nombre <- tomar_nombre
    Escribir "digite el nombre del cliente ";
    Leer dato_nombre
FinFuncion

Funcion dato_apellido <- tomar_apellido
    Escribir "Escribir el apellido ";
    leer dato_apellido
FinFuncion

Funcion dato_mensaje <- hacer_mensaje(dato_nombre , dato_apellido)
	Definir dato_mensaje como cadena
    dato_mensaje <- "Bienvenido usuario: " + dato_nombre + " " + dato_apellido
FinFuncion

Funcion imprimir_mensaje(dato_mensaje)
    Escribir dato_mensaje
FinFuncion

Algoritmo MensajeBienvenido
    Definir nombre Como Caracter;
    Definir apellido Como Caracter;
    Definir dato_mensaje Como Caracter;
    
	nombre <- tomar_nombre()
    apellido <- tomar_apellido()
	dato_mensaje <- hacer_mensaje(nombre , apellido);
	imprimir_mensaje(dato_mensaje)
FinAlgoritmo
