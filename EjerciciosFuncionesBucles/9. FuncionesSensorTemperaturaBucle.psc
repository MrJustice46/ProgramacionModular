Funcion Temperatura <- LeerTemperatura
    Definir Temperatura Como Real
    Escribir "Ingrese la temperatura actual (°C)"
    Leer Temperatura
    Escribir "--------------------------------------"
FinFuncion

Funcion Mensaje <- HacerMensajeFuera
    Definir Mensaje Como Cadena
    Mensaje <- "La temperatura no está dentro del rango (18°C - 25°C), intente nuevamente"
FinFuncion

Funcion Mensaje <- HacerMensajeDentro
    Definir Mensaje Como Cadena
    Mensaje <- "La temperatura está dentro del rango"
FinFuncion

Funcion ImprimirMensaje(Textoo)
    Escribir Textoo
FinFuncion

Algoritmo SensorTemperaturaBucle
    Definir Temperatura Como Real
    Definir Mensaje Como Cadena
	
    Repetir
        Temperatura <- LeerTemperatura()
		
        Si Temperatura < 18 O Temperatura > 25 Entonces
            Mensaje <- HacerMensajeFuera()
            ImprimirMensaje(Mensaje)
            ImprimirMensaje("--------------------------------------")
        FinSi
		
    Hasta Que Temperatura >= 18 Y Temperatura <= 25
	
    Mensaje <- HacerMensajeDentro()
    ImprimirMensaje(Mensaje)
	
FinAlgoritmo

