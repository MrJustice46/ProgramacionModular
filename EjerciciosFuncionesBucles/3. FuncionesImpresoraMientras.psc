Funcion Hojas <- LeerHojas
	Definir Hojas Como Entero
	Escribir "Ingrese cuantas hojas hay en la impresora"
	Leer Hojas
FinFuncion

Funcion Cantidad <- LeerCantidad
	Definir Cantidad Como Entero
	Escribir "------------------------------"
	Escribir "Ingrese cuantas paginas desea imprimir"
	Leer Cantidad
	Escribir "------------------------------"
FinFuncion

Funcion Restante <- ImprimirPaginas(Hojas, Cantidad)
	Definir Restante Como Entero
	Restante <- Hojas - Cantidad
FinFuncion

Funcion Mensaje <- HacerMensajeImpresion(Cantidad)
	Definir Mensaje Como Cadena
	Mensaje <- "Se imprimieron " + ConvertirATexto(Cantidad) + " paginas." 
FinFuncion

Funcion Mensaje <- HacerMensajeRestante(Restante)
	Definir Mensaje Como Cadena
	Mensaje <- "El total de papel restante es " + ConvertirATexto(Restante)
FinFuncion

Funcion Mensaje <- HacerMensajeError(Hojas)
	Definir Mensaje Como Cadena
	Mensaje <- "No hay suficiente papel, solo quedan " + ConvertirATexto(Hojas) + " hojas"
FinFuncion

Funcion ImprimirMensaje(Textoo)
	Escribir Textoo
FinFuncion

Algoritmo FuncionesImpresoraMientras
	Definir Papel, Cantidad Como Entero
	Definir Mensaje Como Cadena
	
	Papel <- LeerHojas()
	
	Mientras Papel > 0 Hacer
		Cantidad <- LeerCantidad()
		Si Cantidad <= Papel Entonces
			Papel <- ImprimirPaginas(Papel, Cantidad)
			Mensaje <- HacerMensajeImpresion(Cantidad)
			ImprimirMensaje(Mensaje)
			Mensaje <- HacerMensajeRestante(Papel)
			ImprimirMensaje(Mensaje)
		SiNo
			Mensaje <- HacerMensajeError(Papel)
			ImprimirMensaje(Mensaje)
		FinSi
	FinMientras
	Escribir "------------------------------"
	ImprimirMensaje("Ya no quedan hojas disponibles, fin de la impresion") 
FinAlgoritmo