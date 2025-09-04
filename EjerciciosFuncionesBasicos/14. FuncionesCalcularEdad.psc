Funcion A�oActual <- LeerA�oActual
    Definir A�oActual Como Entero
    Escribir "Ingrese el a�o actual"
    Leer A�oActual
FinFuncion

Funcion A�oNacimiento <- LeerA�oNacimiento(Persona)
    Definir A�oNacimiento Como Entero
	Escribir "--------------------------------------"
    Escribir "Ingrese el a�o de nacimiento de la persona ", Persona, ":"
    Leer A�oNacimiento
    Escribir "--------------------------------------"
FinFuncion

Funcion Edad <- CalcularEdad(A�oActual, A�oNacimiento)
    Definir Edad Como Entero
    Edad <- A�oActual - A�oNacimiento
FinFuncion

Funcion Mensaje <- HacerMensajeEdad(Persona, Edad)
    Definir Mensaje Como Cadena
    Mensaje <- "La edad de la persona " + ConvertirATexto(Persona) + " es: " + ConvertirATexto(Edad) + " a�os"
FinFuncion

Funcion ImprimirMensaje(Textoo)
    Escribir Textoo
FinFuncion

Algoritmo FuncionesCalcularEdad
    Definir A�oActual, A�oNacimiento, Edad Como Entero
    Definir Mensaje Como Cadena
    
    A�oActual <- LeerA�oActual()
    
    Para Persona <- 1 Hasta 3 Con Paso 1 Hacer
        A�oNacimiento <- LeerA�oNacimiento(Persona)
        Edad <- CalcularEdad(A�oActual, A�oNacimiento)
        Mensaje <- HacerMensajeEdad(Persona, Edad)
        ImprimirMensaje(Mensaje)
    FinPara
FinAlgoritmo

