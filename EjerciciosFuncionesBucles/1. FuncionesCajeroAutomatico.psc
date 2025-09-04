Funcion saldoInicial <- PedirSaldo
    Definir saldoInicial Como Real
    Escribir "Ingrese el saldo disponible de la cuenta"
    Leer saldoInicial
FinFuncion

Funcion montoRetiro <- PedirMonto
    Definir montoRetiro Como Real
    Escribir "Ingrese el monto que desea retirar"
    Leer montoRetiro
FinFuncion

Funcion saldoFinal <- Retirar(saldo, monto)
    Definir saldoFinal Como Real
    saldoFinal <- saldo - monto
FinFuncion

Funcion ImprimirMensaje(textoo)
    Escribir textoo
FinFuncion

Algoritmo CajeroAutomatico
    Definir Saldo, Monto Como Real
	
    Saldo <- PedirSaldo()
	
    Mientras Saldo > 0 Hacer
        ImprimirMensaje("------------------------------")
        Monto <- PedirMonto()
		
		Si Monto > Saldo Entonces
            ImprimirMensaje("------------------------------")
            ImprimirMensaje("El monto excede el saldo")
        SiNo
            Saldo <- Retirar(Saldo, Monto)
            ImprimirMensaje("------------------------------")
            Escribir "Retiro exitoso: ", Monto
            Escribir "Su saldo actual es: ", Saldo
        FinSi
		
        Si Saldo <= 0 Entonces
            ImprimirMensaje("No tiene más dinero")
            ImprimirMensaje("------------------------------")
            ImprimirMensaje("Gracias por utilizar nuestro servicio")
        FinSi
    FinMientras
FinAlgoritmo

