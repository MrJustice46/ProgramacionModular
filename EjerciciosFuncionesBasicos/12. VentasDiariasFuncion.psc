Funcion resultado <- Sumar(Total,Venta)
	resultado <- Total + Venta
FinFuncion

Funcion Mensaje <- HacerMensaje(total)
	Definir Mensaje como cadena
	Mensaje <- "El total de las ventas diarias de la semana es de: $" + ConvertirATexto(total)
FinFuncion

Funcion ImprimirMensaje(Mensaje)
	Escribir Mensaje
FinFuncion

Algoritmo VentasDiariasFuncion
	Definir venta, total Como real
	Definir Mensaje como cadena
	total <- 0
	
	Para control <- 1 Hasta 7 Con Paso 1 Hacer
		Escribir "Ingrese el valor de la venta ", control, " :"
		Leer venta
		
		total <- Sumar(total, venta)
	FinPara
	
	Mensaje <- HacerMensaje(total)
	ImprimirMensaje(Mensaje)
	
FinAlgoritmo
