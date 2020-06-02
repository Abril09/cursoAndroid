//Realice y represente mediante diagrama de flujo y un algoritmo que lea los nombres y las edades
//	de 10 alumn@s de la carrera Ing. industrial, y que los datos se almacenen en dos vectores, y con
//	base en esto se determine el nombre de los alumn@s con la edad mayor del arreglo.


Algoritmo alumnasIngenieriaIndustrial
	Definir alumnos Como Caracter;
	Definir cantidad Como Entero;	
	cantidad=2;
	
	Dimension alumnos[cantidad+1,2];
	Para i=0 Hasta cantidad Con Paso 1 Hacer
		Escribir "n° ",ConvertirATexto(i+1) "- " Sin Saltar ;
		Escribir "ingrese nombre";
		Leer alumnos[i,0];		
		Escribir "ingrese edad";
		Leer alumnos[i,1];	
		Limpiar Pantalla;
	Fin Para
	
	//burbuja simple orden descendente//
	Para i=0 Hasta cantidad Con Paso 1 Hacer	
		para j=0 hasta cantidad-1 con paso 1 hacer
			Si ConvertirANumero(alumnos[j,1]) < ConvertirANumero(alumnos[j+1,1]) Entonces
				aux = alumnos[j,1];
				alumnos[j,1] = alumnos[j+1,1];
				alumnos[j+1,1] = aux;
			fin Si			
		FinPara	
	Fin Para	
	
	Escribir "Ranking";
	Para i=0 Hasta cantidad Con Paso 1 Hacer
		Escribir "n° ",ConvertirATexto(i+1) "- " Sin Saltar ;
		Escribir "nombre: " alumnos[i,0] Sin Saltar " ";		
		Escribir "edad: " alumnos[i,1];	
	Fin Para
	
FinAlgoritmo
