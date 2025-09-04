Funcion Peso <- LeerPeso
	Definir Peso Como Real
	Escribir "Digite su peso (máximo 89 kg)"
	Leer Peso
	Escribir "-----------------"
FinFuncion

Funcion Piso <- LeerPiso
	Definir Piso Como Entero
	Escribir "El edificio tiene 5 pisos, ingrese el piso al cual desea ir"
	Leer Piso
	Escribir "-----------------"
FinFuncion

Funcion MensajePesoValido
	Escribir "Su peso es correcto"
	Escribir "-----------------"
FinFuncion

Funcion MensajePesoInvalido
	Escribir "Hay mucho sobrepeso, vaya por las escaleras por favor"
FinFuncion

Funcion MensajePisoValido(Piso)
	Escribir "Moviendo al piso: " + ConvertirATexto(Piso)
FinFuncion

Funcion MensajePisoInvalido
	Escribir "Error, el piso no existe"
FinFuncion

Algoritmo FuncionamientoAscensorPeso
	Definir Peso Como Real
	Definir Piso Como Entero
	
	Peso <- LeerPeso()
	
	Si Peso <= 89 Y Peso >= 1 Entonces
		MensajePesoValido()
		Piso <- LeerPiso()
		Si Piso >= 1 Y Piso <= 5 Entonces
			MensajePisoValido(Piso)
		SiNo
			MensajePisoInvalido()
		FinSi
	SiNo
		MensajePesoInvalido()
	FinSi
	
FinAlgoritmo


