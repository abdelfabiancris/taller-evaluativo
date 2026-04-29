Algoritmo reporte_semanal_pan
	Definir dia, produccion, total, mayorProduccion, diaMayor, diasBajoMeta Como Entero
	Definir promedio Como Real
	total <- 0
	mayorProduccion <- 0
	diaMayor <- 0
	diasBajoMeta <- 0
	Para dia<-1 Hasta 7 Hacer
		Repetir
			Escribir "Ingrese la producción del día ", dia, ": "
			Leer produccion
			Si produccion<0 Entonces
				Escribir "Error: no se permiten valores negativos."
			FinSi
		Hasta Que produccion>=0
		total <- total + produccion
		Si produccion<120 Entonces
			Escribir "Producción baja"
		SiNo
			Si produccion<=180 Entonces
				Escribir "Producción adecuada"
			SiNo
				Escribir "Producción sobresaliente"
			FinSi
		FinSi
		Si produccion>mayorProduccion Entonces
			mayorProduccion<-produccion
			diaMayor<-dia
		FinSi
		Si produccion<150 Entonces
			diasBajoMeta<-diasBajoMeta+1
		FinSi
	FinPara
	promedio<-total/7
	Escribir "Producción total de la semana: ", total
	Escribir "Promedio diario: ", promedio
	Escribir "Día con mayor producción: Día ", diaMayor, " con ", mayorProduccion, " panes"
	Escribir "Días por debajo de 150 panes: ", diasBajoMeta
	
FinAlgoritmo
