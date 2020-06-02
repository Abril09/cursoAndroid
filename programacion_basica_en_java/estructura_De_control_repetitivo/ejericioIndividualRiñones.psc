Algoritmo ejercicioIndividual11
	Definir cantidadDeChoferes Como Entero;
	Definir diasSemana Como Entero;
	Definir totales Como Entero;;
	
	diasSemana=6;
	Escribir "ingrese cantidad de choferes";
	Leer cantidadDeChoferes;
	Dimension matriz[cantidadDeChoferes,diasSemana+2];
	Escribir cantidadDeChoferes diasSemana;
	Limpiar Pantalla;
	
	Para i = 0 Hasta (cantidadDeChoferes-1) Con Paso 1 Hacer
		kilometrosSemana=0;
		nombre="";
		Escribir "ingrese nombre chofer";
		Leer nombre;
		matriz[i,0]="nombre:"+nombre+" km: ";
		Para j = 1 Hasta diasSemana Con Paso 1 Hacer
			Escribir "ingrese cantidad de  kilometros dia " j;
			Leer matriz[i,j];
			kilometrosSemana= kilometrosSemana + ConvertirANumero(matriz[i,j]);			
		Fin Para
		matriz[i,diasSemana+1]="km por semana = "+ConvertirATexto(kilometrosSemana);	
		Limpiar Pantalla;
	Fin Para
	
	Para i = 0 Hasta cantidadDeChoferes-1 Con Paso 1 Hacer
		Para j = 0 Hasta diasSemana+1 Con Paso 1 Hacer
			Escribir matriz[i,j] Sin Saltar +" ";		
		Fin Para
		Escribir "";
	Fin Para
	
FinAlgoritmo
