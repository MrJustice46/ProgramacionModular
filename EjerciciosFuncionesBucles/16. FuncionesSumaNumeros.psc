Funcion Cantidad <- LeerCantidad
    Definir Cantidad Como Entero
    Escribir "¿Cuántos numeros desea ingresar?"
    Leer Cantidad
    Escribir "--------------------------------------"
FinFuncion

Funcion Num <- LeerNumero(Control)
    Definir Num Como Real
    Escribir "Ingrese el numero ", Control, ": "
    Leer Num
    Escribir "--------------------------------------"
FinFuncion

Funcion Total <- Acumular(Suma, Num)
    Definir Total Como Real
    Total <- Suma + Num
FinFuncion

Funcion Mensaje <- HacerMensajeSuma(Total)
    Definir Mensaje Como Cadena
    Mensaje <- "La suma total de los numeros validos es: " + ConvertirATexto(Total)
FinFuncion

Funcion ImprimirMensaje(Textoo)
    Escribir Textoo
FinFuncion

Algoritmo SumaNumeros
    Definir Cantidad, Nums Como Entero
    Definir Num, Suma Como Real
    Definir Mensaje Como Cadena
    
    Suma <- 0
    Cantidad <- LeerCantidad()
    
    Para Nums <- 1 Hasta Cantidad Con Paso 1 Hacer
        Num <- LeerNumero(Nums)
        
        Si Num <= 0 Entonces
            ImprimirMensaje("Numero invalido. No sera sumado.")
            ImprimirMensaje("--------------------------------------")
        SiNo
            Suma <- Acumular(Suma, Num)
        FinSi
    FinPara
    
    Mensaje <- HacerMensajeSuma(Suma)
    ImprimirMensaje(Mensaje)
FinAlgoritmo

