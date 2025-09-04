Funcion Titulo <- LeerTitulo
    Definir Titulo Como Cadena
    Escribir "Ingrese el nombre del libro"
    Leer Titulo
    Escribir "----------------------------"
FinFuncion

Funcion Autor <- LeerAutor
    Definir Autor Como Cadena
    Escribir "Ingrese el autor del libro"
    Leer Autor
    Escribir "----------------------------"
FinFuncion

Funcion NumPaginas <- LeerNumPaginas
    Definir NumPaginas Como Entero
    Escribir "Ingrese el número de páginas que tiene el libro"
    Leer NumPaginas
    Escribir "----------------------------"
FinFuncion

Funcion Respuesta <- LeerRespuesta
    Definir Respuesta Como Cadena
    Escribir "¿Desea ingresar otro libro? (Si/No)"
    Leer Respuesta
    Escribir "----------------------------"
FinFuncion


Algoritmo RegistroBiblioteca
    Definir Titulo, Autor, Respuesta, ListaLibros Como Cadena
    Definir NumPaginas Como Entero
	
    Repetir
        Titulo <- LeerTitulo()
        Autor <- LeerAutor()
        NumPaginas <- LeerNumPaginas()
		Escribir "Libro añadido a la lista"
		Escribir "----------------------------"
		ListaLibros <- ListaLibros + Titulo + " | "
		Escribir ListaLibros
		Escribir "----------------------------"
        Respuesta <- LeerRespuesta()
    Hasta Que Respuesta = "No" O Respuesta = "no" O Respuesta = "NO"
	
	Escribir "Lista de libros"
	Escribir ListaLibros
	
FinAlgoritmo

