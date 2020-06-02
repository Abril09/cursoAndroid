Funcion isPrimo <- numerosPrimos ( primo )
	isPrimo = Falso;
	Si (primo Mod 2) ==1  Entonces
		isPrimo = Verdadero;
	Fin Si
Fin Funcion


Algoritmo ejercicioIndividual15
	Definir numeroPrimo Como Entero;
	Escribir "ingrese numero";
	Leer  numeroPrimo;
	
	Escribir "es primo:"  numerosPrimos(numeroPrimo);
	
FinAlgoritmo
