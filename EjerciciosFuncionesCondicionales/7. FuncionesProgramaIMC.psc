Funcion Peso <- LeerPeso
	Definir Peso Como Real
	Escribir "Señor usuario ingrese su peso (kg): "
	Leer Peso
	Escribir "--------------------------"
FinFuncion

Funcion Altura <- LeerAltura
	Definir Altura Como Real
	Escribir "Ingrese su altura (m): "
	Leer Altura
	Escribir "--------------------------"
FinFuncion

Funcion IMC <- CalcularIMC(Peso, Altura)
	Definir IMC Como Real
	IMC <- Peso / (Altura ^ 2)
FinFuncion

Funcion Categoria <- DeterminarCategoria(IMC)
	Definir Categoria Como Entero
	Si IMC >= 1 Y IMC <= 18.5 Entonces
		Categoria <- 1
	SiNo
		Si IMC > 18.5 Y IMC <= 24.9 Entonces
			Categoria <- 2
		SiNo
			Si IMC > 24.9 Y IMC <= 29.9 Entonces
				Categoria <- 3
			SiNo
				Si IMC > 29.9 Entonces
					Categoria <- 4
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion

Algoritmo CalcularIMCs
	Definir Peso, Altura, IMC Como Real
	Definir CategoriaIMC Como Entero
	Definir Mensaje Como Cadena
	
	Peso <- LeerPeso()
	Altura <- LeerAltura()
	IMC <- CalcularIMC(Peso, Altura)
	CategoriaIMC <- DeterminarCategoria(IMC)
	
	Segun CategoriaIMC Hacer
		Caso 1:
			Escribir "Su IMC es de: ", IMC
			Escribir "Usted tiene bajo peso"
			
		Caso 2:
			Escribir "Su IMC es de: ", IMC
			Escribir "Usted tiene peso normal"
			
		Caso 3:
			Escribir "Su IMC es de: ", IMC
			Escribir "Usted tiene sobrepeso"
			
		Caso 4:
			Escribir "Su IMC es de: ", IMC
			Escribir "Usted tiene obesidad"
			
		De Otro Modo:
			Escribir "Error de calculo " CategoriaIMC
	FinSegun
FinAlgoritmo

