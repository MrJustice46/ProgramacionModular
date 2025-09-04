Funcion Base <- LeerBase
	Definir Base Como Real
	Escribir "Ingrese el valor de la base"
	Leer Base
FinFuncion

Funcion Altura <- LeerAltura
	Definir Altura Como Real
	Escribir "Ingrese el valor de la altura"
	Leer Altura
FinFuncion 

Función Area <- CalcularArea(Base,Altura)
	Area <- Base * Altura
FinFunción

Funcion Mensaje <- HacerMensaje(Area)
	Definir Mensaje como cadena
	Mensaje <- "El area del rectangulo es: " + ConvertirATexto(Area)
FinFuncion

Funcion ImprimirMensaje(Mensaje)
	Escribir Mensaje
FinFuncion

Algoritmo CalcularAreaFuncion
	Definir base, altura, area Como Real
	Definir Mensaje como cadena
	
	base <- LeerBase()
	altura <- LeerAltura()
	area <- CalcularArea(base, altura)
	Mensaje <- HacerMensaje(area)
	ImprimirMensaje(Mensaje)
FinAlgoritmo
