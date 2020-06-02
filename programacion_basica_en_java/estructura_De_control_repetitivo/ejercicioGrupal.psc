Algoritmo ejercicioGrupal
	Definir cantidadAlumnos Como Entero;
	Definir auxPEdad Como Entero;
	Definir auxNombre Como Caracter;
	
	Escribir "ingrese cantidad de alumnos";
	Leer cantidadAlumnos;
	
	Dimension edadAlumnos[cantidadAlumnos];
	Dimension  nombreAlumnos[cantidadAlumnos];
	
	Para i=0 Hasta cantidadAlumnos-1 Con Paso 1 Hacer
		Escribir "ingrese nombre";
		Leer nombreAlumnos[i];
		Escribir "ingrese edad";
		Leer edadAlumnos[i];			
	Fin Para
	
	//burbuja simple orden descendente//
	Para i=0 Hasta (cantidadAlumnos-1) Con Paso 1 Hacer	
		para j=0 hasta (cantidadAlumnos-2) con paso 1 hacer
			
			Si edadAlumnos[j] < edadAlumnos[j+1] Entonces
				
				auxEdad = edadAlumnos[j];
				edadAlumnos[j] = edadAlumnos[j+1];
				edadAlumnos[j+1]=auxEdad;
				
				auxNombre=nombreAlumnos[j];
				nombreAlumnos[j]=nombreAlumnos[j+1];
				nombreAlumnos[j+1]=auxNombre;				
			fin Si			
		FinPara	
	Fin Para
	
	//mayores de edad//
	isTitulo=Verdadero;
	para i=0 Hasta cantidadAlumnos-1 Con Paso 1 Hacer	
		Si edadAlumnos[i]>18 Entonces
			Si isTitulo Entonces
				Escribir "Mayores de edad";
				isTitulo = Falso;
			Fin Si
			Escribir "nombre:" nombreAlumnos[i] ", edad: " edadAlumnos[i];
		Fin Si		
	FinPara
	
	//ranking edad//
	Escribir "Ranking";
	Si cantidadAlumnos>3 Entonces
		Escribir "1- lugar - nombre:" nombreAlumnos[0] ", edad: " edadAlumnos[0];
		Escribir "2- lugar - nombre:" nombreAlumnos[1] ", edad: " edadAlumnos[0];
		Escribir "3- lugar - nombre:" nombreAlumnos[1] ", edad: " edadAlumnos[0];
	SiNo
		Escribir "1- lugar - nombre:" nombreAlumnos[0] ", edad: " edadAlumnos[0];
	Fin Si
	
	
FinAlgoritmo
