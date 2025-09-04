Funcion Distancia <- LeerDistancia(control)
	Definir Distancia Como Real
	Escribir "Ingrese la distancia que recorrió el carro ", control, " (km):"
	Leer Distancia
FinFuncion

Funcion Tiempo <- LeerTiempo(control)
	Definir Tiempo Como Real
	Escribir "Ingrese el tiempo que tardó el carro ", control, " (h):"
	Leer Tiempo
FinFuncion

Funcion Velocidad <- CalcularPromedio(Distancia, Tiempo)
	Velocidad <- Distancia / Tiempo
FinFuncion

Funcion Mensaje <- HacerMensaje(control, Velocidad)
	Definir Mensaje Como Cadena
	Mensaje <- "El promedio de velocidad del carro " + ConvertirATexto(control) + " es: " + ConvertirATexto(Velocidad) + " km/h"
FinFuncion

Funcion ImprimirMensaje(Mensaje)
	Escribir Mensaje
FinFuncion

Algoritmo PromedioVelocidad
	Definir control Como Entero
	Definir Distancia, Tiempo, Velocidad Como Real
	Definir Mensaje Como Cadena
	
	Para control <- 1 Hasta 2 Con Paso 1 Hacer
		Distancia <- LeerDistancia(control)
		Tiempo <- LeerTiempo(control)
		Velocidad <- CalcularPromedio(Distancia, Tiempo)
		Mensaje <- HacerMensaje(control, Velocidad)
		ImprimirMensaje(Mensaje)
	FinPara
FinAlgoritmo
