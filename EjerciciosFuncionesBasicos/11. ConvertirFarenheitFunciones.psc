Funcion Celsius <- LeerTemperatura
	Definir Celsius Como Real
	Escribir "Ingresar temperatura en grados celsius"
	Leer Celsius
FinFuncion

Funcion Farenheit <- ConvertirFahrenheit(Celsius)
	Farenheit <- (Celsius * 9/5) + 32;
FinFuncion

Funcion Mensaje <- HacerMensaje(TemperaturaFahrenheit)
	Definir Mensaje como cadena
	Mensaje <- "La temperatura en fahrenheit es: " + ConvertirATexto(TemperaturaFahrenheit)
FinFuncion

Funcion ImprimirMensaje(Mensaje)
	Escribir Mensaje
FinFuncion

Algoritmo ConvertirFarenheitFunciones
	Definir TemperaturaCelsius, TemperaturaFahrenheit Como Real
	Definir Mensaje como cadena
	
	TemperaturaCelsius <- LeerTemperatura()
	TemperaturaFahrenheit <- ConvertirFahrenheit(TemperaturaCelsius)
	
	Mensaje <- HacerMensaje(TemperaturaFahrenheit)
	ImprimirMensaje(Mensaje)
	
FinAlgoritmo
