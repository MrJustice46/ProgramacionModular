Funcion Num <- LeerNumero
    Definir Numero Como Entero
    Escribir "Ingrese un numero entero"
    Leer Num
    Escribir "----------------------------"
FinFuncion

Funcion NuevoNumero <- RestarUno(Num)
    Definir NuevoNumero Como Entero
    NuevoNumero <- Num - 1
FinFuncion

Funcion Mensaje <- HacerMensaje(Num)
    Definir Mensaje Como Cadena
    Mensaje <- ConvertirATexto(Num)
FinFuncion

Funcion ImprimirMensaje(Textoo)
    Escribir Textoo
FinFuncion

Algoritmo CuentaRegresiva
    Definir Nums Como Entero
    Definir Mensaje Como Cadena
    
    Nums <- LeerNumero()
    
    Mientras Nums > 0 Hacer
        Mensaje <- HacerMensaje(Nums)
        ImprimirMensaje(Mensaje)
        Nums <- RestarUno(Nums)
    FinMientras
    
    ImprimirMensaje("Conteo terminado")
FinAlgoritmo

