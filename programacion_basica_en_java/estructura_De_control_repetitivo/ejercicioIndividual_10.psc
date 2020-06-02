

Algoritmo ejercicio10
	Definir cantidadAlumnos Como Entero
	Definir auxPromedio Como Entero
	Definir auxNombre Como Caracter
	
	Escribir "ingrese cantidad de alumnos"
	Leer cantidadAlumnos
	
	Dimension promedioAlumnos[cantidadAlumnos]
	Dimension  nombreAlumnos[cantidadAlumnos]
	
	Para i=1 Hasta cantidadAlumnos Con Paso 1 Hacer
		Escribir "ingrese nombre" 
		Leer nombreAlumnos[i]		
		Escribir "ingrese promedio" 
		Leer promedioAlumnos[i] 			
	Fin Para
	
	//burbuja simple orden descendente//
	Para i=1 Hasta cantidadAlumnos Con Paso 1 Hacer	
		para j=1 hasta (cantidadAlumnos-1) con paso 1 hacer	
			Si promedioAlumnos[j] < promedioAlumnos[j+1] Entonces
				
				auxPromedio = promedioAlumnos[j]
				promedioAlumnos[j] = promedioAlumnos[j+1]
				promedioAlumnos[j+1]=auxPromedio
				
				auxNombre=nombreAlumnos[j]
				nombreAlumnos[j]=nombreAlumnos[j+1]
				nombreAlumnos[j+1]=auxNombre				
			fin Si			
		FinPara	
	Fin Para

	para i=1 Hasta cantidadAlumnos Con Paso 1 Hacer
		Escribir i "- " nombreAlumnos[i] " edad: " promedioAlumnos[i]	
		
	FinPara

	
	
FinAlgoritmo

