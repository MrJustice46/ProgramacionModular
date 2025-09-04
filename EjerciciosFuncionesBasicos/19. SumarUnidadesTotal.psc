Funcion Precio <- LeerPrecio(control)
	Definir Precio Como Real
	Escribir "Ingrese el precio del Producto ", control, ":"
	Leer Precio
FinFuncion

Funcion Unidades <- LeerUnidades(control)
	Definir Unidades Como Real
	Escribir "Ingrese unidades vendidas del Producto ", control, ":"
	Leer Unidades
FinFuncion

Funcion Total <- CalcularTotal(Unidades, Precio)
	Total <- Unidades * Precio
FinFuncion

Funcion Mensaje <- HacerMensaje(control, Total)
	Definir Mensaje Como Cadena
	Mensaje <- "Total a pagar por Producto " + ConvertirATexto(control) + ": " + "$" + ConvertirATexto(Total)
FinFuncion

Funcion ImprimirMensaje(Mensaje)
	Escribir Mensaje
FinFuncion

Algoritmo SumarUnidadesTotal
	Definir control Como Entero
	Definir Precio, Unidades, Total, totalGeneral Como Real
	Definir Mensaje Como Cadena
	
	totalGeneral <- 0
	
	Para control <- 1 Hasta 3 Con Paso 1 Hacer
		Precio <- LeerPrecio(control)
		Unidades <- LeerUnidades(control)
		Total <- CalcularTotal(Unidades, Precio)
		totalGeneral <- totalGeneral + Total
		Mensaje <- HacerMensaje(control, Total)
		ImprimirMensaje(Mensaje)
	FinPara
	
	Escribir "Total general a pagar: ", "$",totalGeneral
FinAlgoritmo
