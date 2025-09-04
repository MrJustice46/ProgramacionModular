Funcion Distancia <- LeerDistancia
    Definir Distancia Como Real
    Escribir "Ingrese la distancia total del viaje (Km): "
    Leer Distancia
    Escribir "----------------------------"
FinFuncion

Funcion Velocidad <- LeerVelocidad
    Definir Velocidad Como Real
    Escribir "Ingrese la velocidad promedio del coche (Km/h): "
    Leer Velocidad
    Escribir "----------------------------"
FinFuncion

Funcion Tiempo <- CalcularTiempo(Distancia, Velocidad)
    Definir Tiempo Como Real
    Tiempo <- Distancia / Velocidad
FinFuncion

Funcion Resultado <- AcumularTiempo(Suma, Tiempo)
    Definir Resultado Como Real
    Resultado <- Suma + Tiempo
FinFuncion

Funcion Respuesta <- LeerRespuesta
    Definir Respuesta Como Cadena
    Escribir "¿Desea registrar otro viaje? (Si/No)"
    Leer Respuesta
    Escribir "----------------------------"
FinFuncion

Funcion Mensaje <- HacerMensaje(Estimado)
    Definir Mensaje Como Cadena
    Mensaje <- "El tiempo estimado total de los viajes es: " + ConvertirATexto(Estimado) + " horas."
FinFuncion

Funcion ImprimirMensaje(Texto)
    Escribir Texto
FinFuncion

Algoritmo ViajeCoche
    Definir Distancia, Velocidad, Tiempo, Suma Como Real
    Definir Respuesta, Mensaje Como Cadena
	
    Suma <- 0
    Respuesta <- "Si"
    
    Mientras Respuesta="Si" O Respuesta="si" O Respuesta="SI" Hacer
        Distancia <- LeerDistancia()
        Velocidad <- LeerVelocidad()
        Tiempo <- CalcularTiempo(Distancia, Velocidad)
        Suma <- AcumularTiempo(Suma, Tiempo)
        Respuesta <- LeerRespuesta()
    FinMientras
    
    Mensaje <- HacerMensaje(Suma)
    ImprimirMensaje(Mensaje)
FinAlgoritmo

