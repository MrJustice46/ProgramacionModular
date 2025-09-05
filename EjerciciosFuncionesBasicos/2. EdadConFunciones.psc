Funcion Edad <- LeerEdad
	Definir Edad Como Entero
	Escribir "Digite su edad: "
    Leer edad
FinFuncion

Funcion mensaje <- MostrarEdad(edad)
    Definir mensaje Como Cadena
    mensaje <- "Tienes " + ConvertirATexto(edad) + " años"
	Escribir mensaje
FinFuncion

Algoritmo EdadConFunciones
    Definir edad Como Entero
    
	edad <- LeerEdad()
    resultado <- MostrarEdad(edad)
   
FinAlgoritmo

