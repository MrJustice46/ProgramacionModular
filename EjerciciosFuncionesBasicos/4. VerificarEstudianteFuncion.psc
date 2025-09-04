Funcion Estudiante <- ComprobarEstudiante()
	Definir Estudiante Como Logico
	Escribir "Digite Verdadero si es estudiante o Falso si no lo es: "
	Leer Estudiante
FinFuncion

Funcion MostrarEstado(Estudiante)
	Si Estudiante = Verdadero Entonces
		MensajeVerdadero()
	SiNo
		MensajeFalso()
	FinSi
FinFuncion

Funcion MensajeVerdadero
	Escribir "¿Es usted estudiante? [Verdadero/Falso]: verdadero"
FinFuncion

Funcion MensajeFalso
	Escribir "¿Es usted estudiante? [Verdadero/Falso]: Falso"
FinFuncion

Algoritmo VerificarEstudiante
	Definir esEstudiante Como Logico
	
	esEstudiante <- ComprobarEstudiante()
	MostrarEstado(esEstudiante)
FinAlgoritmo