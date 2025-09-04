Funcion Cantidad <- LeerCantidad
    Definir Cantidad Como Entero
    Escribir "¿Cuántos contactos desea registrar?"
    Leer Cantidad
    Escribir "--------------------------------------"
FinFuncion

Funcion Nombre <- LeerNombre(Contacto)
    Definir Nombre Como Cadena
    Escribir "Ingrese el nombre del contacto ", Contacto, ":"
    Leer Nombre
    Nombre <- Nombre
    Escribir "--------------------------------------"
FinFuncion

Funcion Telefono <- LeerTelefono(Contacto)
    Definir Telefono Como Cadena
    Escribir "Ingrese el número de teléfono del contacto ", Contacto, ":"
    Leer Telefono
    Telefono <- Telefono + " "
    Escribir "--------------------------------------"
FinFuncion

Funcion Mensaje <- AcumularResumen(Resumen, Nombre, Telefono)
    Definir Mensaje Como Cadena
    Mensaje <- Resumen + Nombre + " -> " + Telefono + "| "
FinFuncion

Funcion ImprimirMensaje(Textoo)
    Escribir Textoo
FinFuncion

Algoritmo AgendaContactos
    Definir Nombre, Telefono, ResumenAcumulador Como Cadena
    Definir Cantidad, Contactos Como Entero
    
    ResumenAcumulador <- ""
    
    Cantidad <- LeerCantidad()
    
    Para Contactos <- 1 Hasta Cantidad Con Paso 1 Hacer
        Nombre <- LeerNombre(Contactos)
        Telefono <- LeerTelefono(Contactos)
        
        ResumenAcumulador <- AcumularResumen(ResumenAcumulador, Nombre, Telefono)
    FinPara
    
    ImprimirMensaje("Contactos registrados:")
    ImprimirMensaje(ResumenAcumulador)
FinAlgoritmo

