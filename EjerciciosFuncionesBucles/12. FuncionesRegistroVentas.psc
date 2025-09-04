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

Funcion Respuesta <- LeerRespuesta
    Definir Respuesta Como Cadena
    Escribir "¿Desea ingresar otra venta? (Si/No)"
    Leer Respuesta
    Escribir "----------------------------"
FinFuncion

Funcion Acumulado <- Acumular(Total, Precio)
    Definir Acumulado Como Real
    Acumulado <- Total + Precio
FinFuncion

Funcion Mensaje <- HacerMensajeTotal(Total)
    Definir Mensaje Como Cadena
    Mensaje <- "El total de las ventas de los productos es: " + ConvertirATexto(Total)
FinFuncion

Funcion ImprimirMensaje(Textoo)
    Escribir Textoo
FinFuncion

Algoritmo RegistroVentas
    Definir Producto, Respuesta, ListaProductos, Mensaje Como Cadena
    Definir Precio, TotalAcumulativo Como Real
	
    TotalAcumulativo <- 0
    ListaProductos <- ""
    
    Repetir
        Producto <- LeerProducto()
        Precio <- LeerPrecio()
        
        TotalAcumulativo <- Acumular(TotalAcumulativo, Precio)
        ListaProductos <- ListaProductos + Producto + " | "
        
        Escribir "Producto añadido a la lista"
        ImprimirMensaje(Producto)
        ImprimirMensaje("----------------------------")
        
        Respuesta <- LeerRespuesta()
    Hasta Que Respuesta = "No" O Respuesta = "no" O Respuesta = "NO"
    
    Mensaje <- HacerMensajeTotal(TotalAcumulativo)
    ImprimirMensaje(Mensaje)
    ImprimirMensaje("----------------------------")
    
    Escribir "Lista de productos vendidos:"
    ImprimirMensaje(ListaProductos)
FinAlgoritmo
