Funcion letra <- MostrarLetra
	Definir letra Como Caracter
	Escribir "Ingrese una letra para asignar"
	Leer letra
FinFuncion

Funcion Mensaje <- HacerMensaje(letra)
	Definir Mensaje como cadena
	Mensaje <- "La letra asignada es " + letra
FinFuncion

Funcion ImprimirMensaje(Mensaje)
	Escribir Mensaje
FinFuncion

Algoritmo LetraFuncion
	Definir Mensaje, letra como cadena
	
	letra <- MostrarLetra()
	Mensaje <- HacerMensaje(letra)
	ImprimirMensaje(Mensaje)
	
FinAlgoritmo
