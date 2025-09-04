Funcion consumo <- LeerServicio(nombreServicio)
	Definir consumo Como Real
	Escribir "Ingrese el valor del ", nombreServicio, ": "
	Leer consumo
	Escribir "--------------------------------------"
FinFuncion

Funcion totalPagar <- Acumular(totalPagar, consumo)
	totalPagar <- totalPagar + consumo
FinFuncion

Funcion Mensaje <- HacerMensaje(totalPagar)
	Definir Mensaje Como Cadena
	Mensaje <- "El total a pagar por los servicios es de: " + ConvertirATexto(totalPagar)
FinFuncion

Funcion ImprimirMensaje(Mensaje)
	Escribir Mensaje
FinFuncion

Algoritmo TotalServicios
	Definir consumo, totalPagar Como Real
	Definir Mensaje Como Cadena
	
	totalPagar <- 0
	
	consumo <- LeerServicio("Gas")
	totalPagar <- Acumular(totalPagar, consumo)
	
	consumo <- LeerServicio("Agua")
	totalPagar <- Acumular(totalPagar, consumo)
	
	consumo <- LeerServicio("Electricidad")
	totalPagar <- Acumular(totalPagar, consumo)
	
	Mensaje <- HacerMensaje(totalPagar)
	ImprimirMensaje(Mensaje)
FinAlgoritmo

