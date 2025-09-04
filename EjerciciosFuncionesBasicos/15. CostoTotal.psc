Funcion Tiempo <- LeerTiempo
	Definir Tiempo Como Real
	Escribir "ingrese el tiempo trabajado en horas"
	Leer Tiempo
FinFuncion

Funcion Tarifa <- LeerTarifa
	Definir Tarifa Como Real
	Escribir "ingrese la tarifa por horas"
	Leer Tarifa
FinFuncion

Funcion Resultado <- CalcularCosto(Tiempo, Tarifa)
	Resultado <- Tiempo * Tarifa
FinFuncion

Funcion Mensaje <- HacerMensaje(Resultado)
	Definir Mensaje como cadena
	Mensaje <- "el costo total es: " + ConvertirATexto(Resultado)
FinFuncion

Funcion ImprimirMensaje(Mensaje)
	Escribir Mensaje
FinFuncion

Algoritmo Costo_total
	Definir tiempo,costoTotal,tarifaPorHora Como Real
	Definir Mensaje Como cadena
	
	tiempo <- LeerTiempo()
	tarifaPorHora <- LeerTarifa()
	costoTotal <- CalcularCosto(tiempo, tarifaPorHora)
	Mensaje <- HacerMensaje(costoTotal)
	ImprimirMensaje(Mensaje)
FinAlgoritmo