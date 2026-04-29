Funcion precio <- ObtenerPrecio(codigo)
	Definir precio Como Entero
	Segun codigo Hacer
		1:
			precio<-2000
		2:
			precio<-2500
		3:
			precio<-4000
	FinSegun
FinFuncion
Algoritmo ventas_cafeteria
	Definir codigo, cantidad, precio, totalCompra, totalGeneral Como Entero
	totalGeneral<-0
	Repetir
		Escribir "MENU DE PRODUCTOS"
		Escribir "1. Agua ($2000)"
		Escribir "2. Galleta ($2500)"
		Escribir "3. Jugo ($4000)"
		Escribir "0. Terminar"
		Repetir
			Escribir "Ingrese el código del producto: "
			Leer codigo
			
			Si codigo<>0 Y codigo<>1 Y codigo<>2 Y codigo<>3 Entonces
				Escribir "Error: código inválido."
			FinSi
		Hasta Que codigo=0 O codigo=1 O codigo=2 O codigo=3
		Si codigo<>0 Entonces
			Repetir
				Escribir "Ingrese la cantidad: "
				Leer cantidad
				Si cantidad<=0 Entonces
					Escribir "Error: la cantidad debe ser mayor que cero."
				FinSi
			Hasta Que cantidad>0
			precio<-ObtenerPrecio(codigo)
			totalCompra<-precio*cantidad
			totalGeneral<-totalGeneral+totalCompra
			Escribir "Total de esta compra: $", totalCompra
		FinSi
	Hasta Que codigo=0
	Escribir "TOTAL GENERAL VENDIDO: $", totalGeneral
FinAlgoritmo
