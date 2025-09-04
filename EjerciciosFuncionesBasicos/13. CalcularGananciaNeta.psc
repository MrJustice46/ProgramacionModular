Funcion Ingresos <- LeerIngresos
	Definir Ingresos Como Real
	Escribir "Ingrese el total de ingresos";
	Leer Ingresos;
FinFuncion

Funcion Gastos <- LeerGastos
	Definir Gastos Como Real
	Escribir "Ingrese el total de gastos";
	Leer Gastos;
FinFuncion

Funcion Resultado <- CalcularGanancia(Ingresos, Gastos)
	Resultado <- Ingresos - Gastos
FinFuncion

Funcion Mensaje <- HacerMensaje(gananciaNeta)
	Definir Mensaje como cadena
	Mensaje <- "La ganancia neta es: $" + ConvertirATexto(gananciaNeta)
FinFuncion

Funcion ImprimirMensaje(Mensaje)
	Escribir Mensaje
FinFuncion

Algoritmo CalcularGananciaNeta
	Definir ingresos,gananciaNeta, gastos Como Real;
	Definir Mensaje como cadena
	
	ingresos <- LeerIngresos()
	gastos <- LeerGastos()
	gananciaNeta <- CalcularGanancia(ingresos, gastos)
	Mensaje <- HacerMensaje(gananciaNeta)
	ImprimirMensaje(Mensaje)
FinAlgoritmo
