Funcion NombreCliente <- LeerNombre
	Definir NombreCliente Como Cadena
	Escribir "Ingrese el nombre del cliente"
	Leer NombreCliente
FinFuncion

Funcion CodigoCliente <- LeerCodigo
	Definir CodigoCliente Como Cadena
	Escribir "Ingrese el codigo del cliente (A, B o C)"
	Leer CodigoCliente
FinFuncion

Funcion Estudiante <- LeerEstudiante
	Definir Estudiante Como Cadena
	Escribir "¿Es usted estudiante?"
	Leer Estudiante
FinFuncion

Funcion NombreProducto <- LeerProducto
	Definir NombreProducto Como Cadena
	Escribir "Ingrese el nombre del producto"
	Leer NombreProducto
FinFuncion

Funcion PrecioUnitario <- LeerPrecio
	Definir PrecioUnitario Como Real
	Escribir "Ingrese el precio unitario del producto"
	Leer PrecioUnitario
FinFuncion

Funcion CantidadProducto <- LeerCantidad
	Definir CantidadProducto Como Entero
	Escribir "¿Cuantas unidades desea comprar?"
	Leer CantidadProducto
FinFuncion

Funcion Subtotal <- CalcularSubtotal(Precio, Cantidad)
	Definir Subtotal Como Real
	Subtotal <- Precio * Cantidad
FinFuncion

Funcion Total <- CalcularTotal(Subtotal, Porcentaje)
	Definir Total Como Real
	Total <- Subtotal * Porcentaje
FinFuncion

Funcion ImprimirMensaje(Textoo)
	Escribir Textoo
FinFuncion

Algoritmo FacturaFuncion
	Definir NombreCliente, NombreProducto, CodigoCliente, Estudiante Como Caracter
	Definir CantidadProducto, PrecioUnitario, Subtotal, Total, Porcentaje Como Real 
	
	NombreCliente <- LeerNombre()
	CodigoCliente <- LeerCodigo()
	NombreProducto <- LeerProducto()
	PrecioUnitario <- LeerPrecio()
	CantidadProducto <- LeerCantidad()
	Estudiante <- LeerEstudiante()
	
	Subtotal <- CalcularSubtotal(PrecioUnitario, CantidadProducto)
	
	Si Estudiante = "Si" O Estudiante = "si" O Estudiante = "SI" Entonces
		Porcentaje <- 1.05
		Total <- CalcularTotal(Subtotal, Porcentaje)
		ImprimirMensaje("El subtotal de " + NombreProducto + " es de: " + ConvertirATexto(Subtotal))
		ImprimirMensaje("El precio total de " + NombreProducto + " es de: " + ConvertirATexto(Total))
	SiNo
		Si Estudiante = "No" O Estudiante = "no" O Estudiante = "NO" Entonces
			Porcentaje <- 1.13
			Total <- CalcularTotal(Subtotal, Porcentaje)
			ImprimirMensaje("El subtotal de " + NombreProducto + " es de: " + ConvertirATexto(Subtotal))
			ImprimirMensaje("El precio total de " + NombreProducto + " es de: " + ConvertirATexto(Total))
		SiNo
			ImprimirMensaje("Error: Digite si o no")
		FinSi
	FinSi
FinAlgoritmo

