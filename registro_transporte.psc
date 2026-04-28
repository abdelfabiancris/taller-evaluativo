
Algoritmo registro_transporte
	Definir vehiculo, totalGastado, viajesC,taxi,bus,metro Como Entero
	totalGastado<-0
	taxi<-0
	bus<-0
	metro<-0
	viajesC<-0
	Repetir
		Escribir "ingrese el tipo de vehiculo (1 bus, 2 metro, 3 taxi o 0 para terminar):"
		Leer vehiculo
		Si vehiculo>0 y vehiculo<=3 Entonces
		Segun vehiculo Hacer
			1:
				costo<-3000
			2:
				costo<-3500
			3:
				costo<-8000
		FinSegun
		totalGastado<-totalGastado+costo
		viajesC<-viajesC+1
	Sino
		Si vehiculo<>0 Entonces
			Escribir "numero no valido"
		FinSi
	FinSi
Hasta Que vehiculo=0
Escribir "tu total gastado fue ", totalGastado
Escribir "cantidad de viajes: ", viajesC

FinAlgoritmo
