Funcion Plato <- LeerPlato
	Definir Plato Como Cadena
	Escribir "Bienvenidos al restaurante, que desea comer? Tenemos 3 platos (Bandeja paisa, Sancocho, Carne Asada) "
	Leer Plato
	Escribir "-----------------"
FinFuncion

Funcion Precio <- LeerPrecioPlato(Plato)
	Definir Precio Como Real
	Escribir "Listo, el precio por el plato ", Plato, " es de: "
	Leer Precio
	Escribir "-----------------"
FinFuncion

Funcion Bebida <- LeerBebida
	Definir Bebida Como Cadena
	Escribir "Listo, también tenemos bebidas, ¿cual desea tomar? (Gaseosa, Limonada, Jugos) "
	Leer Bebida
	Escribir "-----------------"
FinFuncion

Funcion Precio <- LeerPrecioBebida(Bebida)
	Definir Precio Como Real
	Escribir "Listo, el precio por la bebida ", Bebida, " es de: "
	Leer Precio
	Escribir "-----------------"
FinFuncion

Funcion Metodo <- LeerMetodoPago
	Definir Metodo Como Cadena
	Escribir "¿Con cuál método de pago desea pagar? (Efectivo, Tarjeta de credito o Cheque) "
	Leer Metodo
	Escribir "-----------------"
FinFuncion

Funcion Total <- Sumar(Precio1, Precio2)
	Definir Total Como Real
	Total <- Precio1 + Precio2
FinFuncion

Funcion TotalDescuento <- CalcularDescuento(Total, Porcentaje)
	Definir TotalDescuento Como Real
	TotalDescuento <- Total - (Total * Porcentaje)
FinFuncion

Algoritmo MenuRestaurante
	Definir Plato, Bebida, MetodoPago, Mensaje Como Cadena
	Definir PrecioPlato, PrecioBebida, TotalSinDescuento, TotalConDescuento, PorcentajeDescuento Como Real
	
	PrecioPlato <- 0
	PrecioBebida <- 0
	PorcentajeDescuento <- 0
	TotalConDescuento <- 0
	
	Plato <- LeerPlato()
	PrecioPlato <- LeerPrecioPlato(Plato)
	Bebida <- LeerBebida()
	PrecioBebida <- LeerPrecioBebida(Bebida)
	
	TotalSinDescuento <- Sumar(PrecioPlato, PrecioBebida)
	
	MetodoPago <- LeerMetodoPago()
	
	Segun MetodoPago Hacer
		Caso "Efectivo" o "efectivo" o "EFECTIVO":
			Escribir "Este metodo de pago no tiene descuento"
			PorcentajeDescuento <- 0
			TotalConDescuento <- CalcularDescuento(TotalSinDescuento, PorcentajeDescuento)
			
		Caso "Tarjeta de credito" o "tarjeta de credito" o "TARJETA DE CREDITO":
			Escribir "Este metodo de pago tiene un descuento de 10%"
			PorcentajeDescuento <- 0.1
			TotalConDescuento <- CalcularDescuento(TotalSinDescuento, PorcentajeDescuento)
			
		Caso "Cheque" o "cheque" o "CHEQUE":
			Escribir "Este metodo de pago tiene un descuento de 3%"
			PorcentajeDescuento <- 0.03
			TotalConDescuento <- CalcularDescuento(TotalSinDescuento, PorcentajeDescuento)
			
		De Otro Modo:
			Escribir "Lo sentimos, no aceptamos este método de pago: ", MetodoPago
			PorcentajeDescuento <- 0
			TotalConDescuento <- CalcularDescuento(TotalSinDescuento, PorcentajeDescuento)
	FinSegun
	
	Escribir "El total es de: ", TotalSinDescuento
	Escribir "El total con descuento es: ", TotalConDescuento
FinAlgoritmo

