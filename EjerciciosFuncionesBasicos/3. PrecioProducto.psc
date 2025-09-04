Funcion Producto <- LeerProducto()
	Definir Producto como cadena
	Escribir "Hola, cuanto cuesta"
	Leer Producto
FinFuncion

Funcion PrecioProducto <- LeerPrecio(Producto)
	Definir PrecioProducto Como Real
	Escribir "el precio de ",Producto," es"
	Leer PrecioProducto
FinFuncion

Funcion mensaje <- HacerMensaje(Producto, PrecioProducto)
	mensaje <- "el precio de " + Producto + " es " + "$" + ConvertirATexto(PrecioProducto)
FinFuncion

Funcion ImprimirMensaje(mensaje)
	Escribir mensaje
FinFuncion

Algoritmo Precio_producto
	Definir PrecioProducto Como Real
	Definir Producto Como Cadena
	Definir mensaje como cadena
	
	Producto <- LeerProducto()
	PrecioProducto <- LeerPrecio(Producto)
	mensaje <- HacerMensaje(Producto, PrecioProducto)
	ImprimirMensaje(mensaje)
	
	
	
FinAlgoritmo
