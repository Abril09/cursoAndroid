Algoritmo ejercicioIndividual9
	
	Definir arreglo Como Caracter;
	Definir i Como Entero;
	Dimension arreglo[8];
	
	Para i=0 Hasta 7 Con Paso 1 Hacer
		arreglo[i] = ConvertirATexto(i);
		Escribir arreglo[i] Sin Saltar;
	Fin Para
	Escribir "-" Sin Saltar;
	Para i=7 Hasta 0 Con Paso -1 Hacer
		
		Escribir arreglo[i] Sin Saltar;
	Fin Para
	
FinAlgoritmo
