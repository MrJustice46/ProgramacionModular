Funcion nom <- LeerNombre()
	Definir Nom Como Cadena
	
	Escribir "Ingrese su nombre"
	Leer Nom
FinFuncion

Funcion ape <- LeerApellido()
	Definir ape Como Cadena
	Escribir "Ingrese su apellido"
	Leer ape
FinFuncion

Funcion mensaje <- Bienvenida(nombre, apellido)
    Definir mensaje Como Cadena
    mensaje <- "Bienvenido " + nombre + " " + apellido
	Escribir mensaje
FinFuncion

Algoritmo SaludoConFunciones
	Definir nombre, apellido, mensajes Como Cadena
	nombre <- LeerNombre()
	apellido <- LeerApellido()
	mensajes <- Bienvenida(nombre, apellido)
FinAlgoritmo