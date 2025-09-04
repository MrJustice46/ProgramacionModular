Funcion NumeroSecreto <- GenerarNumero
    Definir NumeroSecreto Como Entero
    NumeroSecreto <- Aleatorio(1,100)
FinFuncion

Funcion Intento <- LeerIntento
    Definir Intento Como Entero
	Escribir "----------------------------"
    Escribir "Digita un número: "
    Leer Intento
    Escribir "----------------------------"
FinFuncion

Funcion Mensaje <- HacerMensajeMayor
    Definir Mensaje Como Cadena
    Mensaje <- "El número secreto es mayor al que elegiste."
FinFuncion

Funcion Mensaje <- HacerMensajeMenor
    Definir Mensaje Como Cadena
    Mensaje <- "El número secreto es menor al que elegiste."
FinFuncion

Funcion Mensaje <- HacerMensajeCorrecto(NumeroSecreto)
    Definir Mensaje Como Cadena
    Mensaje <- "¡Correcto! El número secreto era: " + ConvertirATexto(NumeroSecreto)
FinFuncion

Funcion ImprimirMensaje(Textoo)
    Escribir Textoo
FinFuncion

Algoritmo JuegoAdivinanza
    Definir Num, Intentos Como Entero
    Definir Mensaje Como Cadena
	
    Escribir "Te tenemos un juego de números"
    Escribir ""
    Escribir "Por favor, adivina un número del 1 al 100"
	
    Num <- GenerarNumero()
    Intentos <- LeerIntento()
	
    Mientras Num <> Intentos Hacer
        Si Intentos < Num Entonces
            Mensaje <- HacerMensajeMayor()
            ImprimirMensaje(Mensaje)
        SiNo
            Mensaje <- HacerMensajeMenor()
            ImprimirMensaje(Mensaje)
        FinSi
		
        Intentos <- LeerIntento()
    FinMientras
	
    Mensaje <- HacerMensajeCorrecto(Num)
    ImprimirMensaje(Mensaje)
FinAlgoritmo

