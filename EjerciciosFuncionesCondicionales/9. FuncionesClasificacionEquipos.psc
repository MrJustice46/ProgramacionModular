Funcion Resultado <- LeerResultado(Equipo, Partido)
	Definir Resultado Como Cadena
	Escribir "Ingrese el resultado del partido ", Partido, " (Ganado, Perdido o Empatado) para el equipo ", Equipo, ": "
	Leer Resultado
	Escribir "------------------------------"
FinFuncion

Funcion Mensaje <- HacerMensaje(Equipo, Puntos)
	Definir Mensaje Como Cadena
	Mensaje <- "Equipo " + ConvertirATexto(Equipo) + " obtiene " + ConvertirATexto(Puntos) + " puntos"
FinFuncion

Funcion ImprimirMensaje(Mensaje)
	Escribir Mensaje
	Escribir "------------------------------"
FinFuncion

Funcion Acumulado <- Acumular(Anterior, Nuevo)
	Definir Acumulado Como Entero
	Acumulado <- Anterior + Nuevo
FinFuncion

Algoritmo ClasificacionEquipos
	Definir PuntosEquipo1, PuntosEquipo2, Puntos Como Entero
	Definir Resultado1, Resultado2, Mensaje Como Cadena
	
	PuntosEquipo1 <- 0
	PuntosEquipo2 <- 0
	
	// Partido 1 Equipo 1
	Resultado1 <- LeerResultado(1, 1)
	Segun Resultado1 Hacer
		Caso "Ganado" o "ganado" o "GANADO":
			Puntos <- 30
		Caso "Empatado" o "empatado" o "EMPATADO":
			Puntos <- 10
		Caso "Perdido" o "perdido" o "PERDIDO":
			Puntos <- 0
		De Otro Modo:
			Puntos <- 0
	FinSegun
	PuntosEquipo1 <- Acumular(PuntosEquipo1, Puntos)
	Mensaje <- HacerMensaje(1, Puntos)
	ImprimirMensaje(Mensaje)
	
	// Partido 1 Equipo 2
	Resultado2 <- LeerResultado(2, 1)
	Segun Resultado2 Hacer
		Caso "Ganado" o "ganado" o "GANADO":
			Puntos <- 30
		Caso "Empatado" o "empatado" o "EMPATADO":
			Puntos <- 10
		Caso "Perdido" o "perdido" o "PERDIDO":
			Puntos <- 0
		De Otro Modo:
			Puntos <- 0
	FinSegun
	PuntosEquipo2 <- Acumular(PuntosEquipo2, Puntos)
	Mensaje <- HacerMensaje(2, Puntos)
	ImprimirMensaje(Mensaje)
	
	// Partido 2 Equipo 1
	Resultado1 <- LeerResultado(1, 2)
	Segun Resultado1 Hacer
		Caso "Ganado" o "ganado" o "GANADO":
			Puntos <- 30
		Caso "Empatado" o "empatado" o "EMPATADO":
			Puntos <- 10
		Caso "Perdido" o "perdido" o "PERDIDO":
			Puntos <- 0
		De Otro Modo:
			Puntos <- 0
	FinSegun
	PuntosEquipo1 <- Acumular(PuntosEquipo1, Puntos)
	Mensaje <- HacerMensaje(1, Puntos)
	ImprimirMensaje(Mensaje)
	
	// Partido 2 Equipo 2
	Resultado2 <- LeerResultado(2, 2)
	Segun Resultado2 Hacer
		Caso "Ganado" o "ganado" o "GANADO":
			Puntos <- 30
		Caso "Empatado" o "empatado" o "EMPATADO":
			Puntos <- 10
		Caso "Perdido" o "perdido" o "PERDIDO":
			Puntos <- 0
		De Otro Modo:
			Puntos <- 0
	FinSegun
	PuntosEquipo2 <- Acumular(PuntosEquipo2, Puntos)
	Mensaje <- HacerMensaje(2, Puntos)
	ImprimirMensaje(Mensaje)
	
	Escribir "Clasificación actual:"
	Escribir "Equipo 1: ", PuntosEquipo1
	Escribir "Equipo 2: ", PuntosEquipo2
FinAlgoritmo