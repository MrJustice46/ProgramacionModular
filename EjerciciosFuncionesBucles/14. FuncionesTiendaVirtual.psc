Funcion Cantidad <- LeerCantidad
	Definir Cantidad Como Entero
	Escribir "¿Cuántos productos desea registrar al carrito?"
    Leer Cantidad
	Escribir "--------------------------------------"
FinFuncion

Funcion Nombre <- LeerProducto(Producto)
	Definir Nombre Como Cadena
	Escribir "Ingrese el nombre del producto ", Producto, ":"
	Leer Nombre
	Escribir "--------------------------------------"
FinFuncion

Funcion Precio <- LeerPrecio(Nombre)
	Definir Precio Como Real
	Escribir "Ingrese el precio de ", Nombre, ":"
	Leer Precio
	Escribir "--------------------------------------"
FinFuncion

Funcion TotalGeneral <- TotalAcumulado(Total, Precio)
	Definir TotalGeneral Como Real
	TotalGeneral <- Total + Precio
FinFuncion

Funcion Mensaje <- AcumularResumen(Resumen, Nombre, Precio)
    Definir Mensaje Como Cadena
    Mensaje <- Resumen + Nombre + " -> $" + ConvertirATexto(Precio) + " | "
FinFuncion

Funcion ImprimirMensaje(Textoo)
    Escribir Textoo
FinFuncion

Algoritmo TiendaVirtual
    Definir Cantidad, Productos Como Entero
    Definir NombreProducto, ResumenAcumulador Como Cadena
    Definir Precio, TotalGeneral Como Real
    
    TotalGeneral <- 0
    ResumenAcumulador <- ""
	Cantidad <- LeerCantidad()
    
    Para Productos <- 1 Hasta Cantidad Con Paso 1 Hacer
        
		NombreProducto <- LeerProducto(Productos)
		Precio <- LeerPrecio(NombreProducto)
        
        TotalGeneral <- TotalAcumulado(TotalGeneral, Precio)
		
        ResumenAcumulador <- AcumularResumen(ResumenAcumulador, NombreProducto, Precio)
    FinPara
    
	Escribir "Total de la compra: $", TotalGeneral
	ImprimirMensaje("--------------------------------------")
	ImprimirMensaje("Resumen de compras")
	ImprimirMensaje(ResumenAcumulador)
    
FinAlgoritmo