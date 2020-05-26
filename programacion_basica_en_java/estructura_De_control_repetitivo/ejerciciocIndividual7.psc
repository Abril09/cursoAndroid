Algoritmo ejercicio
	Definir diasSemana Como Entero
	Definir totalHoras Como Entero
	Definir horas Como Entero
	Definir valorHora Como Entero
	Definir horasLegales Como Entero
	Definir sueldo Como Entero
	Definir sueldoMinimo Como Entero
	
	diasSemana=6
	horasLegales=45
	sueldoMinimo=320000
	
	Escribir "valor hora"
	Leer valorHora
	
	Para i=1 Hasta diasSemana Con Paso 1 Hacer
		Escribir "ingrese cantidad de horas semanales"
		Escribir "dia: " i
		Leer horas;
		totalHoras=totalHoras+horas
	Fin Para

	sueldo = (totalHoras*valorHora)*4
	
	Escribir "total de horas semanales"
	Escribir totalHoras
	
	Si totalHoras > horasLegales Entonces
		Escribir "sobre pasa horas legales semanales"
	Fin Si
	
	Escribir "Sueldo mensual"
	Escribir "total de horas mensual" (totalHoras*4)
	Escribir "sueldo" sueldo 
	
	Si sueldo > sueldoMinimo Entonces
		Escribir "sobre pasa sueldo minimo"
	SiNo
		Escribir "menos del sueldo minimo"
	Fin Si
	

	
	
	
	
FinAlgoritmo
