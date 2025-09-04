Funcion Temperatura <- LeerTemperatura
	Definir Temperatura Como Real
	Escribir "Ingrese la temperatura actual (20 - 25°C)"
	Leer Temperatura
	Escribir "-----------------"
FinFuncion

Funcion MostrarTemperatura(Temperatura)
	Si Temperatura >= 20 Y Temperatura <= 25 Entonces
		MensajeVerdadero(Temperatura)
	SiNo
		MensajeFalso(Temperatura)
	FinSi
FinFuncion

Funcion MensajeVerdadero(Temperatura)
	Escribir "La temperatura: ", Temperatura "°C es normal"
FinFuncion

Funcion MensajeFalso(Temperatura)
	Escribir "Alerta, la temperatura: " Temperatura "°C esta fuera de lo normal"
FinFuncion

Algoritmo SensorTemperaturaAlerta
	Definir Temperatura Como Real
	
	Temperatura <- LeerTemperatura()
	MostrarTemperatura(Temperatura)
	
FinAlgoritmo
