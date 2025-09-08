Funcion Nombre <- LeerNombre
	Definir Nombre Como Cadena
	Escribir "Ingrese su nombre señor cliente:"
	Leer Nombre
FinFuncion

Funcion Hora <- LeerHora
	Definir Hora Como Entero
	Escribir "Ingrese la hora actualmente (Hora Militar)"
	Leer Hora
FinFuncion

Funcion HacerMensaje(Nombre, Hora)
	Si Hora >= 1 Y Hora < 12 Entonces
		MensajeBuenosDias(Nombre)
	SiNo
		Si Hora >= 12 Y Hora < 18 Entonces
			MensajeBuenasTardes(Nombre)
		SiNo
			Si Hora >= 18 Y Hora <= 24 Entonces
				MensajeBuenasNoches(Nombre)
			FinSi
		FinSi
	FinSi
FinFuncion

Funcion MensajeBuenosDias(Nombre)
	Escribir "Buenos dias ", Nombre
FinFuncion

Funcion MensajeBuenasTardes(Nombre)
	Escribir "Buenas tardes ", Nombre
FinFuncion

Funcion MensajeBuenasNoches(Nombre)
	Escribir "Buenas noches ", Nombre
FinFuncion

Algoritmo SaludoFuncion
	Definir Nombre Como Cadena
	Definir Hora Como Entero
	
	Nombre <- LeerNombre()
	Hora <- LeerHora()
	HacerMensaje(Nombre, Hora)
	
FinAlgoritmo
