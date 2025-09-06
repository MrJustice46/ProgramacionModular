Funcion Cantidad <- LeerHabitaciones
	Definir Cantidad Como Entero
	Escribir "¿A cuantas habitaciones desea evaluar la temperatura?"
	Leer Cantidad
	Escribir "--------------------------------"
FinFuncion

Funcion Temperatura <- LeerTemperatura(Control)
	Definir Temperatura Como Real
	Escribir "--------------------------------"
	Escribir "Ingrese la temperatura de la habitación ", Control, " en °C" 
	Leer Temperatura
	Escribir "--------------------------------"
FinFuncion

Funcion Maximo <- MaximaTemperatura
	Definir Maximo Como Real
	Escribir "Ingrese la temperatura maxima aceptada"
	Leer Maximo
	Escribir "--------------------------------"
FinFuncion

Funcion Minimo <- MinimaTemperatura
	Definir Minimo Como Real
	Escribir "Ingrese la temperatura minima aceptada"
	Leer Minimo
FinFuncion

Funcion MostrarTemperatura(Temperatura, Minimo, Maximo)
	Si Temperatura >= Minimo Y Temperatura <= Maximo Entonces
		MensajeVerdadero(Temperatura)
	SiNo
		MensajeFalso(Temperatura)
	FinSi
FinFuncion

Funcion MensajeVerdadero(Temperatura)
	Escribir "La temperatura ", Temperatura, "°C es adecuada"
FinFuncion

Funcion MensajeFalso(Temperatura)
	Escribir "Alerta: La temperatura ", Temperatura, "°C esta fuera del rango adecuado"
FinFuncion

Algoritmo MonitoreoSensoresTemperatura
	Definir Cantidad Como Entero
	Definir Maximo, Minimo, Temperatura Como Real
	
	Cantidad <- LeerHabitaciones()
	Maximo <- MaximaTemperatura()
	Minimo <- MinimaTemperatura()
	
	Para Control <- 1 Hasta Cantidad Con Paso 1 Hacer
		Temperatura <- LeerTemperatura(Control)
		MostrarTemperatura(Temperatura, Minimo, Maximo)
	FinPara
FinAlgoritmo
