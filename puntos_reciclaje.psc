Funcion puntos<-CalcularPuntos(kilos)
	Definir puntos Como Entero
	puntos<-kilos*5
FinFuncion
Algoritmo puntos_reciclaje
	Definir n, i, kilos, puntos Como Entero
	Definir nombre Como Cadena
	Repetir
		Escribir "Ingrese la cantidad de estudiantes: "
		Leer n
		Si n<=0 Entonces
			Escribir "Error: debe ser mayor que cero."
		FinSi
	Hasta Que n>0
	Para i<-1 Hasta n Hacer
		Escribir "Estudiante ", i
		Escribir "Ingrese el nombre: "
		Leer nombre
		Repetir
			Escribir "Ingrese los kilos reciclados (0 a 30): "
			Leer kilos
			Si kilos<0 O kilos>30 Entonces
				Escribir "Error: valor fuera de rango."
			FinSi
		Hasta Que kilos>=0 Y kilos<=30
		puntos<-CalcularPuntos(kilos)
		Escribir "Nombre: ", nombre
		Escribir "Puntos obtenidos: ", puntos
		Si puntos>=50 Entonces
			Escribir "Reconocimiento ganado"
		SiNo
			Escribir "Debe reciclar más"
		FinSi
		
	FinPara
	
FinAlgoritmo
