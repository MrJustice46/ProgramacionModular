Funcion Cantidad <- LeerCantidad
    Definir Cantidad Como Entero
    Escribir "¿Cuántos productos desea registrar?"
    Leer Cantidad
    Escribir "--------------------------------------"
FinFuncion

Funcion Nombre <- LeerProducto(Control)
    Definir Nombre Como Cadena
    Escribir "Ingrese el nombre del producto ", Control, ":"
    Leer Nombre
    Escribir "--------------------------------------"
FinFuncion

Funcion Precio <- LeerPrecio(Nombre)
    Definir Precio Como Real
    Escribir "Ingrese el precio de ", Nombre, ":"
    Leer Precio
    Escribir "--------------------------------------"
FinFuncion

Funcion CantidadVendida <- LeerCantidadVendida(Nombre)
    Definir CantidadVendida Como Entero
    Escribir "Ingrese la cantidad vendida de ", Nombre, ":"
    Leer CantidadVendida
    Escribir "--------------------------------------"
FinFuncion

Funcion TotalVenta <- CalcularTotal(Precio, CantidadVendida)
    Definir TotalVenta Como Real
    TotalVenta <- Precio * CantidadVendida
FinFuncion

Funcion TotalGeneral <- Acumular(Total, TotalVenta)
    Definir TotalGeneral Como Real
    TotalGeneral <- Total + TotalVenta
FinFuncion

Funcion Mensaje <- AcumularResumen(Resumen, Nombre, TotalVenta)
    Definir Mensaje Como Cadena
    Mensaje <- Resumen + Nombre + " -> $" + ConvertirATexto(TotalVenta) + " | "
FinFuncion

Funcion ImprimirMensaje(Textoo)
    Escribir Textoo
FinFuncion

Algoritmo VentasTienda
    Definir Cantidad, Productos, CantidadVendida Como Entero
    Definir NombreProducto, ResumenAcumulador Como Cadena
    Definir Precio, TotalVenta, TotalGeneral Como Real
    
    TotalGeneral <- 0
    ResumenAcumulador <- ""
    
    Cantidad <- LeerCantidad()
    
    Para Productos <- 1 Hasta Cantidad Con Paso 1 Hacer
        NombreProducto <- LeerProducto(Productos)
        Precio <- LeerPrecio(NombreProducto)
        CantidadVendida <- LeerCantidadVendida(NombreProducto)
        
        TotalVenta <- CalcularTotal(Precio, CantidadVendida)
        TotalGeneral <- Acumular(TotalGeneral, TotalVenta)
        
        ResumenAcumulador <- AcumularResumen(ResumenAcumulador, NombreProducto, TotalVenta)
    FinPara
    
    Escribir "Total de la compra: $", TotalGeneral
	ImprimirMensaje("--------------------------------------")
	ImprimirMensaje("Resumen de Ventas")
	ImprimirMensaje(ResumenAcumulador)
FinAlgoritmo

