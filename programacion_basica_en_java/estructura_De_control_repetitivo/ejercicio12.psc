Algoritmo ejercicio12
	Definir matriz Como Entero;
	Definir total Como Entero;
	Dimension matriz[4,4];
	
	Para i = 0 Hasta 3 Con Paso 1 Hacer
		Para j = 0 Hasta 3 Con Paso 1 Hacer
			matriz[i,j]=azar(9);
		Fin Para
	Fin Para
	
	Para i = 0 Hasta 3 Con Paso 1 Hacer
		Para j = 0 Hasta 3 Con Paso 1 Hacer
			Escribir matriz[i,j] Sin Saltar " ";
		Fin Para
		Escribir " ";
	Fin Para
	
	Para i = 0 Hasta 3 Con Paso 1 Hacer
		Para j = 0 Hasta 3 Con Paso 1 Hacer
			Si matriz[i,j]==0 Entonces
				total=total+1;
			Fin Si
		Fin Para
	Fin Para
	
	Escribir "cantidad total de " + ConvertirATexto(0) +": "+ ConvertirATexto(total);
FinAlgoritmo
