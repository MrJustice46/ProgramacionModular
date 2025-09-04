Funcion Tarea <- LeerTarea
    Definir Tarea Como Cadena
    Escribir "Ingrese el nombre de la tarea"
    Leer Tarea
    Escribir "----------------------------"
FinFuncion

Funcion Descripcion <- LeerDescripcion
    Definir Descripcion Como Cadena
    Escribir "Ingrese descripcion de la tarea"
    Leer Descripcion
    Escribir "----------------------------"
FinFuncion

Funcion Fecha <- LeerFecha
    Definir Fecha Como Cadena
    Escribir "Ingrese la fecha de vencimiento"
    Leer Fecha
    Escribir "----------------------------"
FinFuncion

Funcion Respuesta <- LeerRespuesta
    Definir Respuesta Como Cadena
    Escribir "¿Desea ingresar otra tarea? (Si/No)"
    Leer Respuesta
    Escribir "----------------------------"
FinFuncion

Funcion Mensaje <- HacerMensaje(Tarea)
    Definir Mensaje Como Cadena
    Mensaje <- "Tarea: " + Tarea + " | "
FinFuncion

Funcion ImprimirMensaje(Textoo)
    Escribir Textoo
FinFuncion

Algoritmo GestionTareas
    Definir Tarea, Descripcion, Fecha, ListaTareas, Respuesta, Mensaje Como Cadena
	
    ListaTareas <- ""
    Respuesta <- "Si"
	
    Repetir
        Tarea <- LeerTarea()
        Descripcion <- LeerDescripcion()
        Fecha <- LeerFecha()
        
        Mensaje <- HacerMensaje(Tarea)
        ListaTareas <- ListaTareas + Mensaje
        
        Escribir "Tarea añadida a la lista"
        ImprimirMensaje(Tarea)
        Escribir "----------------------------"
        
        Respuesta <- LeerRespuesta()
    Hasta Que Respuesta = "No" O Respuesta = "no" O Respuesta = "NO"
	
    Escribir "Lista completa de tareas:"
    ImprimirMensaje(ListaTareas)
FinAlgoritmo

