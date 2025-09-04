Funcion resultado <- Sumar(acumulado, num)
    resultado <- acumulado + num
FinFuncion

Funcion promedio <- Promediar(suma, cantidad)
    promedio <- suma / cantidad
FinFuncion

Funcion Mensaje <- HacerMensaje(Materia, promedio)
	Definir Mensaje como cadena
	Mensaje <- "El promedio de " + Materia + " es: " + ConvertirATexto(promedio) 
FinFuncion

Funcion ImprimirMensaje(Mensaje)
	Escribir Mensaje
FinFuncion

Algoritmo PromedioMateriasFunciones
    Definir Nota, Suma, Promedio Como Real
    Definir Control, Control2 Como Entero
    Definir Materia Como Caracter
    
    Para Control <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir "Ingrese el nombre de la materia ", Control, ": "
        Leer Materia
		Escribir "----------------------------"
        
        Suma <- 0  
        
        Para Control2 <- 1 Hasta 3 Con Paso 1 Hacer
            Escribir "Ingrese la nota ", Control2, ": "
            Leer nota
			Escribir "----------------------------"
            Suma <- Sumar(Suma, Nota) 
        FinPara
        
        Promedio <- Promediar(Suma, 3) 
        mensaje <- HacerMensaje(Materia, promedio)
		ImprimirMensaje(Mensaje)
		Escribir "----------------------------"
    FinPara
FinAlgoritmo
