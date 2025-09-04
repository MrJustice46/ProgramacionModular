Funcion Cantidad <- LeerCantidad
	Definir Cantidad Como Real
	Escribir "¿Cuántas unidades desea llevar?"
	Leer Cantidad
	Escribir "--------------------------"
FinFuncion

Funcion Precio <- LeerPrecio
	Definir Precio Como Real
	Escribir "Ingrese el precio del producto"
	Leer Precio
	Escribir "--------------------------"
FinFuncion

Funcion Cliente <- LeerCliente
	Definir Cliente Como cadena
	Escribir "Ingrese el tipo de producto que desea comprar (A, V, E):"
	Leer Cliente
	Escribir "--------------------------"
FinFuncion

Funcion Total <- CalcularTotal(Cantidad, Precio)
	Definir Total Como Real
	Total <- Cantidad * Precio
FinFuncion

Algoritmo FuncionesTienda
	
	Definir Cliente como cadena
	Definir Cantidad, Precio, Subtotal, TotalSinDescuento, TotalConDescuento Como Real
	
	Cliente <- LeerCliente()
	Cantidad <- LeerCantidad()
	Precio <- LeerPrecio()
	TotalSinDescuento <- CalcularTotal(Cantidad, Precio)
	
	Segun Cliente Hacer
		Caso "A":
			Escribir "Este producto tiene descuento del 10%"
			Subtotal <- TotalSinDescuento * 0.1;
			TotalConDescuento <- TotalSinDescuento - Subtotal
			Escribir "El total sin descuento es: ", TotalSinDescuento
			Escribir "El total con descuento es: ", TotalConDescuento
			
		Caso "V":
			Escribir "Este producto tiene descuento del 5%"
			Subtotal <- TotalSinDescuento * 0.05
			TotalConDescuento <- TotalSinDescuento - Subtotal
			Escribir "El total sin descuento es: ", TotalSinDescuento
			Escribir "El total con descuento es: ", TotalConDescuento
			
		Caso "E":
			Escribir "Este producto no tiene descuento"
			Escribir "El total es: ", TotalSinDescuento
			
		De Otro Modo:
			Escribir "Error de producto ", Cliente
	FinSegun
FinAlgoritmo
