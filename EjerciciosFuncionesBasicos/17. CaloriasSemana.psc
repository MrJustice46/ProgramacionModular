Funcion Calorias <- LeerCalorias(Dia)
    Definir Calorias Como Real
    Escribir "¿Cuántas calorías consumió el día ", Dia, "?"
    Leer Calorias
    Escribir "--------------------------------------"
FinFuncion

Funcion Total <- Acumular(TotalActual, Calorias)
    Definir Total Como Real
    Total <- TotalActual + Calorias
FinFuncion

Funcion Mensaje <- HacerMensaje(TotalSemana)
    Definir Mensaje Como Cadena
    Mensaje <- "El total de calorías que consumió en la semana es de: " + ConvertirATexto(TotalSemana)
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
    
    CaloriasDia <- LeerCalorias("Miércoles")
    TotalSemana <- Acumular(TotalSemana, CaloriasDia)
    
    CaloriasDia <- LeerCalorias("Jueves")
    TotalSemana <- Acumular(TotalSemana, CaloriasDia)
    
    CaloriasDia <- LeerCalorias("Viernes")
    TotalSemana <- Acumular(TotalSemana, CaloriasDia)
    
    CaloriasDia <- LeerCalorias("Sábado")
    TotalSemana <- Acumular(TotalSemana, CaloriasDia)
    
    CaloriasDia <- LeerCalorias("Domingo")
    TotalSemana <- Acumular(TotalSemana, CaloriasDia)
    
    Mensaje <- HacerMensaje(TotalSemana)
    ImprimirMensaje(Mensaje)
FinAlgoritmo

