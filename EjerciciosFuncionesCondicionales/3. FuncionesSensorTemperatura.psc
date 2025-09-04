Funcion Temperatura <- LeerTemperatura
	Definir Temperatura Como Real
	Escribir "Ingrese la temperatura actual (18 - 25°C)"
	Leer Temperatura
	Escribir "-----------------"
FinFuncion

Funcion MostrarTemperatura(Temperatura)
	Si Temperatura >= 18 Y Temperatura <= 25 Entonces
		MensajeVerdadero(Temperatura)
	SiNo
		MensajeFalso(Temperatura)
	FinSi
FinFuncion

Funcion MensajeVerdadero(Temperatura)
	Escribir "La temperatura: ", Temperatura "°C es adecuada"
FinFuncion

Funcion MensajeFalso(Temperatura)
	Escribir "La temperatura: " Temperatura "°C esta fuera del rango adecuado"
FinFuncion

Algoritmo SensorTemperatura
	Definir Temperatura Como Real
	
	Temperatura <- LeerTemperatura()
	MostrarTemperatura(Temperatura)
	
FinAlgoritmo
