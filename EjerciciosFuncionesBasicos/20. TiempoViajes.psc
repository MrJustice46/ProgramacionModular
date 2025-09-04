Funcion Tiempo <- LeerTiempo(control)
	Definir Tiempo Como Entero
	Escribir "Ingrese el tiempo que duro el tramo ", control, " en minutos:"
	Leer Tiempo
FinFuncion

Funcion tiempoTotal <- AcumularTiempo(tiempoTotal, tiempo)
	tiempoTotal <- tiempoTotal + tiempo
FinFuncion

Funcion Mensaje <- HacerMensaje(tiempoTotal)
	Definir Mensaje Como Cadena
	Mensaje <- "El tiempo total del viaje es: " + ConvertirATexto(tiempoTotal) + " minutos"
FinFuncion

Funcion ImprimirMensaje(Mensaje)
	Escribir Mensaje
FinFuncion

Algoritmo TiempoViajes
	Definir control, numTramos, tiempo, tiempoTotal Como Entero
	Definir Mensaje Como Cadena
	
	Escribir "¿Cuántos tramos tiene el viaje?"
	Leer numTramos
	
	tiempoTotal <- 0
	
	Para control <- 1 Hasta numTramos Con Paso 1 Hacer
		tiempo <- LeerTiempo(control)
		tiempoTotal <- AcumularTiempo(tiempoTotal, tiempo)
	FinPara
	
	Mensaje <- HacerMensaje(tiempoTotal)
	ImprimirMensaje(Mensaje)
FinAlgoritmo



