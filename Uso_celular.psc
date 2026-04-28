Algoritmo Uso_celular
		Escribir "bienvenido al programa para ver el tiempo que usas tu celular"
	Definir minutos Como Real
	Definir uso Como Real
	Definir i Como Entero
	Definir promedio Como Real
	Definir alto Como Entero
	i<-1
	minutos<-0
	promedio<-0
	alto<-0
	Mientras i<=4 Hacer
		Repetir
			Escribir "cuantos minutos usaste tu celular el dia ", i
			Leer uso
		Hasta Que uso<240 y uso>0
		Si uso<120 Entonces
			Escribir "tuviste un uso normal del celular"
		SiNo
			Escribir "tuviste un uso alto del celular"
			alto<-alto+1
		Fin Si
		i<-i+1
		minutos<-minutos+uso
	Fin Mientras
	promedio<-minutos/4
	Escribir "tus minutos de uso fueron " minutos
	Escribir "tu promedio de uso durante estos 4 dias fue de " , promedio
	Escribir "las cantidad de dias que tuviste un uso alto fueron ", alto
	

FinAlgoritmo
