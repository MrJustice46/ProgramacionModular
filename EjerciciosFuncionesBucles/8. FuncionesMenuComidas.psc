Funcion Plato <- LeerPlato
    Definir Plato Como Entero
    Escribir "--------------------------------------"
    Escribir "Ingrese el número del plato que desea comprar"
    Leer Plato
    Escribir "--------------------------------------"
FinFuncion

Funcion Respuesta <- LeerRespuesta
    Definir Respuesta Como Cadena
    Escribir "--------------------------------------"
    Escribir "¿Desea pedir algo más? (Si/No)"
    Leer Respuesta
FinFuncion

Funcion NuevoTotal <- Acumular(Suma, Precio)
    Definir NuevoTotal Como Real
    NuevoTotal <- Suma + Precio
FinFuncion

Funcion Mensaje <- HacerMensaje(Total)
    Definir Mensaje Como Cadena
    Mensaje <- "La cuenta es: " + ConvertirATexto(Total)
FinFuncion

Funcion ImprimirMensaje(Textoo)
    Escribir Textoo
FinFuncion

Algoritmo MenuComidas
    Definir Respuesta, Mensaje Como Cadena
    Definir Plato, Precio, Total Como Real
	
    Total <- 0
	
    Escribir "------------- MENÚ -------------"
    Escribir "1 - Hamburguesa"
    Escribir "2 - Salchipollo"
    Escribir "3 - Perro Caliente"
    Escribir "4 - Sandwich"
	
    Repetir
        Plato <- LeerPlato()
		
        Si Plato = 1 Entonces
            Escribir "Hamburguesa"
            Precio <- 7000
            Escribir "Precio: ", Precio
        SiNo
            Si Plato = 2 Entonces
                Escribir "Salchipollo"
                Precio <- 9000
                Escribir "Precio: ", Precio
            SiNo
                Si Plato = 3 Entonces
                    Escribir "Perro Caliente"
                    Precio <- 5000
                    Escribir "Precio: ", Precio
                SiNo
                    Si Plato = 4 Entonces
                        Escribir "Sandwich"
                        Precio <- 6000
                        Escribir "Precio: ", Precio
                    SiNo
                        Escribir "El número seleccionado no pertenece a ninguno del menú, intente de nuevo"
                        Precio <- 0
                    FinSi
                FinSi
            FinSi
        FinSi
		
        Total <- Acumular(Total, Precio)
		
        Respuesta <- LeerRespuesta()
		
    Hasta Que Respuesta = "No" O Respuesta = "no" O Respuesta = "NO"
	
    Escribir "--------------------------------------"
    Mensaje <- HacerMensaje(Total)
    ImprimirMensaje(Mensaje)
	ImprimirMensaje("--------------------------------------")
	ImprimirMensaje("Gracias por elegirnos")
FinAlgoritmo

