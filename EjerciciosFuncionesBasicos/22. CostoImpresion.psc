Funcion paginas <- LeerPaginas
	Definir paginas Como Entero
	Escribir "Ingrese el número de paginas a imprimir:"
    Leer paginas
FinFuncion

Funcion precioPorPagina <- LeerPrecio
	Definir precioPorPagina Como Real
	Escribir "Ingrese el precio por pagina:"
    Leer precioPorPagina
FinFuncion

Funcion costoTotal <- calcularTotal(paginas, precioPorPagina)
	costoTotal <- paginas * precioPorPagina
FinFuncion

Funcion Mensaje <- HacerMensaje(costoTotal)
	Definir Mensaje como cadena
	Mensaje <- "El costo total de la impresión es: " + ConvertirATexto(costoTotal)
FinFuncion

Funcion ImprimirMensaje(Mensaje)
	Escribir Mensaje
FinFuncion

Algoritmo CostoImpresion
    Definir paginas, precioPorPaginas, costoTotal Como Real
	Definir Mensaje como cadena
	
    paginas <- LeerPaginas()
	precioPorPagina <- LeerPrecio()
	costoTotal <- calcularTotal(paginas, precioPorPagina)
	Mensaje <- HacerMensaje(costoTotal)
	ImprimirMensaje(Mensaje) 
FinAlgoritmo
