Funcion Calorias <- LeerCalorias(Dia)
    Definir Calorias Como Real
    Escribir "�Cu�ntas calor�as consumi� el d�a ", Dia, "?"
    Leer Calorias
    Escribir "--------------------------------------"
FinFuncion

Funcion Total <- Acumular(TotalActual, Calorias)
    Definir Total Como Real
    Total <- TotalActual + Calorias
FinFuncion

Funcion Mensaje <- HacerMensaje(TotalSemana)
    Definir Mensaje Como Cadena
    Mensaje <- "El total de calor�as que consumi� en la semana es de: " + ConvertirATexto(TotalSemana)
FinFuncion

Funcion ImprimirMensaje(Texto)
    Escribir Texto
FinFuncion

Algoritmo CaloriasSemana
    Definir TotalSemana, CaloriasDia Como Real
    Definir Mensaje Como Cadena
    
    TotalSemana <- 0
    
    CaloriasDia <- LeerCalorias("Lunes")
    TotalSemana <- Acumular(TotalSemana, CaloriasDia)
    
    CaloriasDia <- LeerCalorias("Martes")
    TotalSemana <- Acumular(TotalSemana, CaloriasDia)
    
    CaloriasDia <- LeerCalorias("Mi�rcoles")
    TotalSemana <- Acumular(TotalSemana, CaloriasDia)
    
    CaloriasDia <- LeerCalorias("Jueves")
    TotalSemana <- Acumular(TotalSemana, CaloriasDia)
    
    CaloriasDia <- LeerCalorias("Viernes")
    TotalSemana <- Acumular(TotalSemana, CaloriasDia)
    
    CaloriasDia <- LeerCalorias("S�bado")
    TotalSemana <- Acumular(TotalSemana, CaloriasDia)
    
    CaloriasDia <- LeerCalorias("Domingo")
    TotalSemana <- Acumular(TotalSemana, CaloriasDia)
    
    Mensaje <- HacerMensaje(TotalSemana)
    ImprimirMensaje(Mensaje)
FinAlgoritmo

