Funcion Peso <- LeerPeso(control)
	Definir Peso Como Real
	Escribir "Ingrese el peso de la persona ", control, " (kg):"
	Leer Peso
FinFuncion

Funcion Altura <- LeerAltura(control)
	Definir Altura Como Real
	Escribir "Ingrese la altura de la persona ", control, " (m):"
	Leer Altura
FinFuncion

Funcion IMC <- CalcularIMC(Peso, Altura)
	IMC <- Peso / (Altura ^ 2)
FinFuncion

Funcion Mensaje <- HacerMensaje(control, IMC)
	Definir Mensaje Como Cadena
	Mensaje <- "El IMC de la persona " + ConvertirATexto(control) + " es: " + ConvertirATexto(IMC)
FinFuncion

Funcion ImprimirMensaje(Mensaje)
	Escribir Mensaje
FinFuncion

Algoritmo CalcularIMCs
	Definir Peso, Altura, IMC Como Real
	Definir Mensaje Como Cadena
	
	Para control <- 1 Hasta 2 Con Paso 1 Hacer
		Peso <- LeerPeso(control)
		Altura <- LeerAltura(control)
		IMC <- CalcularIMC(Peso, Altura)
		Mensaje <- HacerMensaje(control, IMC)
		ImprimirMensaje(Mensaje)
	FinPara
FinAlgoritmo
