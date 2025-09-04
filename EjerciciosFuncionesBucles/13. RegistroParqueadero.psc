Funcion Capacidad <- LeerCapacidad
	Definir Capacidad Como Entero
	Escribir "�Cu�ntos carros ingresaron al parqueadero?"
    Leer Capacidad
    Escribir "--------------------------------------"
FinFuncion

Funcion Placa <- LeerPlaca(Vehiculo)
    Definir Placa Como Cadena
    Escribir "N�mero de placa del veh�culo ", Vehiculo
    Leer Placa
    Placa <- Placa + " "
    Escribir "--------------------------------------"
FinFuncion

Funcion Hora <- LeerHora
    Definir Hora Como Cadena
    Escribir "Hora de ingreso del veh�culo"
    Leer Hora
    Hora <- Hora + " "
    Escribir "--------------------------------------"
FinFuncion

Funcion Mensaje <- AcumularResumen(Resumen, Placa, Hora)
    Definir Mensaje Como Cadena
    Mensaje <- Resumen + Placa + "-> " + Hora + "| "
FinFuncion

Funcion ImprimirMensaje(Textoo)
    Escribir Textoo
FinFuncion

Algoritmo RegistroParqueadero
    Definir Placa, Hora, ResumenAcumulador Como Cadena
    Definir Capacidad, Vehiculos Como Entero
    
    ResumenAcumulador <- ""
	
	Capacidad <- LeerCapacidad()
    
    Para Vehiculos <- 1 Hasta Capacidad Con Paso 1
        Placa <- LeerPlaca(Vehiculos)
        Hora <- LeerHora()
        ImprimirMensaje("Placa del veh�culo " + ConvertirATexto(Vehiculos) + ": " + Placa)
        ImprimirMensaje("Hora de ingreso del veh�culo " + ConvertirATexto(Vehiculos) + ": " + Hora)
        ImprimirMensaje("--------------------------------------")
        ResumenAcumulador <- AcumularResumen(ResumenAcumulador, Placa, Hora)
    FinPara
    
    ImprimirMensaje("Resumen de veh�culos registrados:")
    ImprimirMensaje(ResumenAcumulador)
FinAlgoritmo

