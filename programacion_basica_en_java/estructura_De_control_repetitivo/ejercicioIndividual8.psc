
Funcion opciones ()
	Escribir "1- ingrese categoria"
	Escribir "2- ingrese venta"
	Escribir "3- calcular"
	Escribir "4- salir"
Fin Funcion

Funcion listaCategoria(categorias,indiceCategoria)
	Escribir "Opciones"
	Para i=1 Hasta indiceCategoria-1 Con Paso 1 Hacer
		Escribir i "-" categorias[i]		
	Fin Para	
FinFuncion

Algoritmo ejercicio
	Definir categorias Como Caracter
	Definir indiceCategoria Como Entero
	Definir option Como Entero
	Definir venta Como Entero
	Definir optionCategoria Como Entero
	Definir totalVenta,oro,plata,bronce Como Entero
	Definir valorCategoriraArray Como Entero
	
	
	Dimension categorias[100]
	Dimension valorCategoriraArray[100]
	indiceCategoria=1
	
	Hacer
		opciones()
		Leer option
		Segun option Hacer
			1: 	Escribir "ingrese categoria"
				Leer categorias[indiceCategoria]
				indiceCategoria=indiceCategoria+1
			2:
				listaCategoria(categorias,indiceCategoria)
				Leer optionCategoria
				Escribir "ingrese venta"
				Leer venta
				Si venta>1000 Entonces
					oro=oro+1				
				SiNo 
					Si venta>=500 Entonces
						plata =plata+1
					SiNo
						bronce=bronce+1
					Fin Si					
				Fin Si				
				valorCategoriraArray[optionCategoria]=valorCategoriraArray[optionCategoria]+1	
				totalVenta = totalVenta+venta
			3:
				Escribir "total de ventas: " totalVenta
				Escribir "total venta oro:" oro
				Escribir "total venta plata:" plata
				Escribir "total venta bronce: " bronce
				
				Para i=1 Hasta indiceCategoria-1 Con Paso 1 Hacer
					Escribir "categoria: " categorias[i]
					Escribir "Cantidad: " valorCategoriraArray[i]
				Fin Para				
				
			De Otro Modo:
				Escribir "opcion no valida"
		Fin Segun
	
	Hasta Que  option=4
	

	
	
FinAlgoritmo
