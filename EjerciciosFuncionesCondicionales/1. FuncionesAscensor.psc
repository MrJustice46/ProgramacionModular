Funcion Piso <- LeerPiso
	Definir Piso Como Entero
	Escribir "El edificio tiene 5 pisos, ingrese el piso al cual desea ir"
	Leer Piso
	Escribir  "-----------------"
FinFuncion

Funcion MostrarPiso(Piso)
	Si piso >= 1 Y piso <= 5 Entonces
		MensajeVerdadero(Piso)
	SiNo
		MensajeFalso()
	FinSi
FinFuncion

Funcion MensajeVerdadero(Piso)
	Escribir "Sera llevado al piso: " + ConvertirATexto(Piso)
FinFuncion

Funcion MensajeFalso
	Escribir "Error el piso no existe"
FinFuncion

Algoritmo FuncionamientoAscensor
	Definir Piso Como Entero
	
	Piso <- LeerPiso()
	MostrarPiso(Piso)
	
FinAlgoritmo
