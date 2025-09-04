Funcion Temperatura <- LeerTemperatura
	Definir Temperatura Como Real
	Escribir "Ingrese la temperatura actual (13 - 30°C)"
	Leer Temperatura
	Escribir "-----------------"
FinFuncion


Funcion Piso <- LeerPiso
	Definir Piso Como Entero
	Escribir "El edificio tiene 5 pisos, ingrese el piso al cual desea ir"
	Leer Piso
	Escribir "-----------------"
FinFuncion

Funcion MensajeValidoTemperatura(Temperatura)
	Escribir "La temperatura: ", Temperatura "°C es adecuada"
	Escribir "-----------------"
FinFuncion

Funcion MensajeInvalidoTemperatura(Temperatura)
	Escribir "Lo sentimos la temperatura no es adecuada no podemos mover el ascensor por su seguridad :("
FinFuncion

Funcion MensajePisoValido(Piso)
	Escribir "Moviendo al piso: " + ConvertirATexto(Piso)
FinFuncion

Funcion MensajePisoInvalido
	Escribir "Error, el piso no existe"
FinFuncion

Algoritmo TemperaturaAscensor
	Definir Piso, Temperatura Como Real
	
	Temperatura <- LeerTemperatura()
	
	Si Temperatura >= 13 Y Temperatura <= 30  
		MensajeValidoTemperatura(Temperatura)
		Piso <- LeerPiso()
		Si piso >= 1 Y piso <= 5 Entonces
			MensajePisoValido(Piso)
		SiNo
			MensajePisoInvalido
		FinSi
	SiNo
		MensajeInvalidoTemperatura(Temperatura)
	FinSi
	
FinAlgoritmo
