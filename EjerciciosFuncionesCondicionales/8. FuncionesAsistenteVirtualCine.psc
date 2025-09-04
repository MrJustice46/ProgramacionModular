Funcion Edad <- LeerEdad
	Definir Edad Como Entero
	Escribir "Por favor ingrese su edad para recomendar pel�culas: "
	Leer Edad
	Escribir "--------------------------"
FinFuncion

Funcion GrupoEdad <- DeterminarGrupo(Edad)
	Definir GrupoEdad Como Entero
	Si Edad >= 1 Y Edad < 7 Entonces
		GrupoEdad <- 1
	SiNo
		Si Edad >= 7 Y Edad <= 17 Entonces
			GrupoEdad <- 2
		SiNo
			Si Edad >= 18 Y Edad <= 30 Entonces
				GrupoEdad <- 3
			SiNo
				Si Edad >= 31 Entonces
					GrupoEdad <- 4
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion

Funcion Mensaje <- HacerMensaje(Textoo)
	Definir Mensaje Como Cadena
	Mensaje <- Textoo
FinFuncion

Funcion ImprimirMensaje(Mensaje)
	Escribir Mensaje
FinFuncion

Algoritmo AsistenteVirtualCine
	Definir Edad, GrupoEdad Como Entero
	Definir Mensaje Como Cadena
	
	Escribir "Bienvenido al Asistente Virtual de Cinemark"
	Escribir "Me encargo de recomendar pel�culas :D"
	Escribir "--------------------------"
	
	Edad <- LeerEdad()
	GrupoEdad <- DeterminarGrupo(Edad)
	
	Segun GrupoEdad Hacer
		Caso 1:
			Mensaje <- HacerMensaje("Recomendaci�n: Pel�culas animadas y educativas. Ejemplos: Toy Story, Flow, Monsters Inc")
			ImprimirMensaje(Mensaje)
		Caso 2:
			Mensaje <- HacerMensaje("Recomendaci�n: Pel�culas de comedia, animadas y familiares. Ejemplos: Happy Gilmore, Son como ni�os")
			ImprimirMensaje(Mensaje)
		Caso 3:
			Mensaje <- HacerMensaje("Recomendaci�n: Pel�culas de acci�n, drama, terror, ciencia ficci�n y comedia. Ejemplos: Avengers End Game, El conjuro, Interestelar, 500 d�as con Summer")
			ImprimirMensaje(Mensaje)
		Caso 4:
			Mensaje <- HacerMensaje("Recomendaci�n: Pel�culas cl�sicas y dramas. Ejemplos: Forrest Gump, Ace Ventura, Todopoderoso")
			ImprimirMensaje(Mensaje)
		De Otro Modo:
			Mensaje <- HacerMensaje("Error: edad no v�lida (" + ConvertirATexto(Edad) + ")")
			ImprimirMensaje(Mensaje)
	FinSegun
	
FinAlgoritmo

