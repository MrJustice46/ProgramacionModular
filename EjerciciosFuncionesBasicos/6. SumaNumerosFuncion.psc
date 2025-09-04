Funcion resultado <- Sumar(a,b)
	resultado <- a + b
FinFuncion

Funcion Mensaje <- HacerMensaje(Suma)
	Definir Mensaje como cadena
	Mensaje <- "la suma de los 5 numeros es de: " + ConvertirATexto(Suma)
FinFuncion

Funcion ImprimirMensaje(Mensaje)
	Escribir Mensaje
FinFuncion

Algoritmo SumaNumerosFuncion
	Definir num, suma Como Entero
	Definir mensaje como cadena
	suma <- 0
	
	Para control <- 1 Hasta 5 Con Paso 1 Hacer
		Escribir "Ingrese el valor del numero ", control, " :"
		Leer num
		suma <- Sumar(suma, num)
	FinPara
	
	mensaje <- HacerMensaje(Suma)
	ImprimirMensaje(Mensaje)
	
FinAlgoritmo
