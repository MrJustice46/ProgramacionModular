Funcion AñoActual <- LeerAñoActual
    Definir AñoActual Como Entero
    Escribir "Ingrese el año actual"
    Leer AñoActual
FinFuncion

Funcion AñoNacimiento <- LeerAñoNacimiento(Persona)
    Definir AñoNacimiento Como Entero
	Escribir "--------------------------------------"
    Escribir "Ingrese el año de nacimiento de la persona ", Persona, ":"
    Leer AñoNacimiento
    Escribir "--------------------------------------"
FinFuncion

Funcion Edad <- CalcularEdad(AñoActual, AñoNacimiento)
    Definir Edad Como Entero
    Edad <- AñoActual - AñoNacimiento
FinFuncion

Funcion Mensaje <- HacerMensajeEdad(Persona, Edad)
    Definir Mensaje Como Cadena
    Mensaje <- "La edad de la persona " + ConvertirATexto(Persona) + " es: " + ConvertirATexto(Edad) + " años"
FinFuncion

Funcion ImprimirMensaje(Textoo)
    Escribir Textoo
FinFuncion

Algoritmo FuncionesCalcularEdad
    Definir AñoActual, AñoNacimiento, Edad Como Entero
    Definir Mensaje Como Cadena
    
    AñoActual <- LeerAñoActual()
    
    Para Persona <- 1 Hasta 3 Con Paso 1 Hacer
        AñoNacimiento <- LeerAñoNacimiento(Persona)
        Edad <- CalcularEdad(AñoActual, AñoNacimiento)
        Mensaje <- HacerMensajeEdad(Persona, Edad)
        ImprimirMensaje(Mensaje)
    FinPara
FinAlgoritmo

