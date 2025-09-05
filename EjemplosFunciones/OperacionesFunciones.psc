Funcion N1 <- LeerNumero1
	Escribir "Digite el primer numero"
	Leer N1
FinFuncion

Funcion N2 <- LeerNumero2
	Escribir "Digite el segundo numero"
	Leer N2
FinFuncion

Funcion Resultado <- Sumar(N1,N2)
	Resultado <- N1+N2
FinFuncion

Funcion Resultado <- Restar(N1,N2)
	Resultado <- N1-N2
FinFuncion

Funcion Resultado <- Multiplicar(N1,N2)
	Resultado <- N1*N2
FinFuncion

Funcion Resultado <- dividir(N1, N2)
	Si N2 <> 0 Entonces
		Resultado <- N1/N2
	SiNo
		Escribir "No se puede dividir entre cero"
	FinSi
FinFuncion

Funcion MostrarTexto(Texto1)
	Escribir Texto1
FinFuncion

Funcion MostrarResultado(nombre,valor1)
	Escribir nombre, ": ", valor1
FinFuncion

Algoritmo OperacionesFunciones
	Definir num1, num2 Como Real
	Definir Suma, Resta, Multiplicacion, Dvision Como Real
	
	num1 <- LeerNumero1
	num2 <- LeerNumero2
	
	Suma <- Sumar(num1, num2)
	Resta <- Restar(num1, num2)
	Multiplicacion <- Multiplicar(num1, num2)
	Division <- dividir(num1, num2)
	
	MostrarTexto("RESULTADOS")
	MostrarResultado("Suma", Suma)
	MostrarResultado("Resta", Resta)
	MostrarResultado("Multiplicacion", Multiplicacion)
	MostrarResultado( "Division", Division)
FinAlgoritmo
