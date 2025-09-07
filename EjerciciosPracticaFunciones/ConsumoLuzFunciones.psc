Funcion MostrarDatos
	Escribir "El consumo del piso (BODEGAS) es de " consumo
FinFuncion

Funcion ImprimirMensaje(Textoo)
	Escribir Textoo
FinFuncion

Funcion Oficinas <- LeerOficinas(piso)
	Definir Oficinas Como Entero
	Escribir "Ingrese la cantidad de oficinas que tiene el piso ", piso
	Leer Oficinas
FinFuncion

Funcion ConsumoPiso <- CalcularConsumo(Oficinas, piso)
	Definir ConsumoPiso, Consumo Como Real
	ConsumoPiso <- 0
	
	Para Control <- 1 Hasta Oficinas Con Paso 1 Hacer
		Escribir "Ingrese el consumo de luz en la oficina ", Control, " del piso ", piso
		Leer Consumo
		ConsumoPiso <- ConsumoPiso + Consumo
	FinPara
FinFuncion


Algoritmo ConsumoLuzFunciones
	Definir ConsumoPiso, Oficinas, ConsumoTotal, ConsumoPiso1, ConsumoPiso2, ConsumoPiso3, ConsumoPiso4 Como Real
	Definir Estado, Estado1, Estado2, Estado3, Estado4 Como Caracter
	
	ConsumoPiso <- 0
	ConsumoPiso1 <- 0
	ConsumoPiso2 <- 0
	ConsumoPiso3 <- 0
	ConsumoPiso4 <- 0
	
	Para Piso <- 1 Hasta 4 Con Paso 1 Hacer
		
		Segun Piso Hacer
			Caso 1: Escribir "Piso de bodegas (Piso 1)"
			Caso 2: Escribir "Piso Nomal (Piso 2)"
			Caso 3: Escribir "Piso VIP (Piso 3)"
			Caso 4: Escribir "Piso Ejecutivo(Piso 4)"
		FinSegun
		
		Oficinas <- LeerOficinas(Piso)
		ConsumoPiso <- CalcularConsumo(Oficinas, Piso)
		
		Si ConsumoPiso >= 0 Y ConsumoPiso <= 29 Entonces
			Estado <- "consumo bajo"
		SiNo
			Si ConsumoPiso >= 30 Y ConsumoPiso <= 59 Entonces
				Estado <- "consumo normal"
			SiNo
				Si ConsumoPiso >= 60 Y ConsumoPiso <= 100 Entonces
					Estado <- "consumo alto"
				SiNo
					Estado <- "inoperante"
				FinSi
			FinSi
		FinSi
		
		Segun Piso Hacer
			Caso 1: ConsumoPiso1 <- ConsumoPiso; Estado1 <- Estado
			Caso 2: ConsumoPiso2 <- ConsumoPiso; Estado2 <- Estado
			Caso 3: ConsumoPiso3 <- ConsumoPiso; Estado3 <- Estado
			Caso 4: ConsumoPiso4 <- ConsumoPiso; Estado4 <- Estado
		FinSegun
	FinPara
	
	ConsumoTotal <- ConsumoPiso1 + ConsumoPiso2 + ConsumoPiso3 + ConsumoPiso4
	ImprimirMensaje("El consumo del piso 1 (piso de bodegas) es de " + ConvertirATexto(ConsumoPiso1) + " con estado de " + Estado1)
	ImprimirMensaje("El consumo del piso 2 (piso normal) es de " + ConvertirATexto(ConsumoPiso2) + " con estado de " + Estado2)
	ImprimirMensaje("El consumo del piso 3 (piso VIP) es de " + ConvertirATexto(ConsumoPiso3) + " con estado de " + Estado3)
	ImprimirMensaje("El consumo del piso 4 (piso ejecutivo) es de " + ConvertirATexto(ConsumoPiso4) + " con estado de " + Estado4)
	ImprimirMensaje("El consumo total de todos los pisos es de " + ConvertirATexto(ConsumoTotal))
FinAlgoritmo
