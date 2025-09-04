Funcion Nota <- LeerNota
    Definir Nota Como Real
    Escribir "Ingrese la nota del examen: "
    Leer Nota
    Escribir "--------------------------------------"
FinFuncion

Funcion Respuesta <- LeerRespuesta
    Definir Respuesta Como Cadena
    Escribir "¿Desea ingresar otra nota? (Si/No)"
    Leer Respuesta
    Escribir "--------------------------------------"
FinFuncion

Funcion Acumulador <- Acumular(Suma, Nota)
    Definir Acumulador Como Real
    Acumulador <- Suma + Nota
FinFuncion

Funcion Promedio <- CalcularPromedio(Suma, Contador)
    Definir Promedio Como Real
    Promedio <- Suma / Contador
FinFuncion

Funcion Mensaje <- HacerMensajePromedio(Promedio)
    Definir Mensaje Como Cadena
    Mensaje <- "El promedio de las notas es: " + ConvertirATexto(Promedio)
FinFuncion

Funcion ImprimirMensaje(Textoo)
    Escribir Textoo
FinFuncion

Algoritmo ResultadosExamen
    Definir Nota, Suma, ContadorNotas, Promedio Como Real
    Definir Respuesta, Mensaje Como Cadena
	
    Suma <- 0
    ContadorNotas <- 0
	
    Repetir
        Nota <- LeerNota()
        Suma <- Acumular(Suma, Nota)
        ContadorNotas <- ContadorNotas + 1
        Respuesta <- LeerRespuesta()
    Hasta Que Respuesta = "No" O Respuesta = "no" O Respuesta = "NO"
	
    Promedio <- CalcularPromedio(Suma, ContadorNotas)
	
    Mensaje <- HacerMensajePromedio(Promedio)
    ImprimirMensaje(Mensaje)
	
    Si Promedio >= 3.5 Entonces
        ImprimirMensaje("Aprobado")
    SiNo
        ImprimirMensaje("Reprobado")
    FinSi
FinAlgoritmo

