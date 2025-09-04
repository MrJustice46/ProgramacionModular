Funcion Precio <- LeerPrecio
	Definir Precio Como Real
	Escribir "Ingrese precio individual: "
    Leer Precio
	Escribir "----------------------------"
FinFuncion

Funcion Cantidad <- LeerCantidad
	Escribir "Ingrese cantidad a comprar: "
    Leer Cantidad
	Escribir "----------------------------"
FinFuncion

Funcion total <- CalcularTotalSinIva(Precio, Cantidad)
    total <- Precio * Cantidad
FinFuncion

Funcion totalConIva <- CalcularTotalConIva(totalSinIva)
    totalConIva <- totalSinIva * 1.19
FinFuncion

Funcion Mensaje <-  HacerMensaje(TotalSinIva)
	Definir Mensaje como cadena
	Mensaje <- "Total sin IVA: " + ConvertirATexto(TotalSinIva)
FinFuncion

Funcion Mensaje2 <-  HacerMensaje2(TotalConIva)
	Definir Mensaje2 como cadena
	Mensaje2 <- "Total con IVA: " + ConvertirATexto(TotalConIva)
FinFuncion

Funcion ImprimirMensaje(Mensaje)
	Escribir Mensaje
FinFuncion

Funcion ImprimirMensaje2(Mensaje2)
	Escribir Mensaje2
FinFuncion

Algoritmo CalculoIvaFuncion
    Definir Precio, Cantidad, TotalSinIva, TotalConIva Como Real
	Definir Mensaje, Mensaje2 como cadena
    
	Precio <- LeerPrecio()
	Cantidad <- LeerCantidad()
    
    TotalSinIva <- CalcularTotalSinIva(Precio, Cantidad)
    TotalConIva <- CalcularTotalConIva(TotalSinIva)
    
	Mensaje <- HacerMensaje(TotalSinIva)
	ImprimirMensaje(Mensaje)
	Mensaje2 <- HacerMensaje2(TotalConIva)
	ImprimirMensaje2(Mensaje2)
FinAlgoritmo
