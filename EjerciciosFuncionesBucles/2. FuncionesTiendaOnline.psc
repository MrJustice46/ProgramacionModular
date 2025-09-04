Funcion Producto <- LeerProducto
	Definir Producto Como Cadena
	Escribir "Ingrese el nombre del producto"
	Leer Producto
	Escribir "----------------------------"
FinFuncion

Funcion Precio <- LeerPrecio
	Definir Precio Como Real
	Escribir "Ingrese el precio del producto"
	Leer Precio
	Escribir "----------------------------"
FinFuncion

Funcion  Cantidad <- LeerCantidad
	Definir Cantidad Como Entero
	Escribir "¿Cuantas cantidades desea comprar?"
	Leer Cantidad
	Escribir "----------------------------"
FinFuncion

Funcion Respuesta <- LeerRespuesta
	Definir Respuesta Como Cadena
	Escribir "¿Desea comprar otro producto?"
	Leer Respuesta
	Escribir "----------------------------"
FinFuncion

Funcion Total <- CalcularTotal(Precio, Cantidad)
	Definir Total Como Real
	Total <- Precio * Cantidad
FinFuncion

Funcion Acumulador <- Acumular(Suma, Total)
	Definir Acumulador Como Real
	Acumulador <- Suma + Total
FinFuncion

Funcion Mensaje <- HacerMensaje(Producto, Total)
	Definir Mensaje como cadena
	Mensaje <- "El total de " + Producto + " es de: " + ConvertirATexto(Total)
FinFuncion

Funcion ImprimirMensaje(Mensaje)
	Escribir Mensaje
	Escribir "----------------------------"
FinFuncion

Algoritmo TiendaOnline
	Definir Precio, Cantidad, Total, Suma Como Real
	Definir Respuesta, Producto, Mensaje Como Cadena
	
	Suma <- 0
	Respuesta <- "Si"
	
	Mientras Respuesta ="Si" O Respuesta ="si" O Respuesta ="SI" Hacer
		Producto <- LeerProducto()
		Precio <- LeerPrecio()
		Cantidad <- LeerCantidad()
		Total <- CalcularTotal(Precio, Cantidad)
		Suma <- Acumular(Suma, Total)
		Mensaje <- HacerMensaje(Producto, Total)
		ImprimirMensaje(Mensaje)
		Respuesta <- LeerRespuesta()
	FinMientras
	Escribir "El total de los productos es de: ", Suma
FinAlgoritmo
