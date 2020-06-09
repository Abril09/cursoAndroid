Funcion limpiaPantalla()
	Escribir "";
	Escribir "presione tecla para continuar";
	Esperar Tecla;
	Limpiar Pantalla;
Fin Funcion


Funcion  ejercicio_1()
	Definir promedio Como Real;
	Definir number Como Entero;
	promedio = 0;
	number = 0 ;
	Para i=1 Hasta 3 Con Paso 1 Hacer
		Escribir "ingresar un numero";
		Leer number;
		promedio = promedio + number;		
	Fin Para
	Escribir "Resultado: " Sin Saltar; 
	Escribir ( promedio / 3 );	
Fin Funcion


Funcion  ejercicio_2()
	Definir genero Como Caracter;
	Definir datos Como Caracter;
	Definir entra Como Logico;
	Dimension datos[2];
	
	Escribir "ingrese nombre";
	Leer datos[0];
	Escribir "ingrese genero H hombre M mujer";
	Leer datos[1];
	
	datos[1] = Minusculas(datos[1]);
	
	si datos[1] <> "h" y datos[1] <> "m" Entonces
		Escribir "error opcion no valida";
	SiNo
		Escribir "nombre: "+datos[0] Sin Saltar;
		Escribir ", genero: "  + datos[1] ;
	FinSi	
	
Fin Funcion


Funcion ejercicio_3()
	Definir genero Como Caracter;
	Definir datos Como Caracter;
	Definir opciones Como Entero; 
	Dimension datos[2];
	
	Escribir "ingrese nombre";
	Leer datos[0];
	Escribir "ingrese genero H hombre M mujer";
	Leer datos[1];
	
	datos[1] = Minusculas(datos[1]);
	
	si datos[1] <> "h" y datos[1] <> "m" Entonces
		Escribir "error opcion no valida";
	SiNo
		Escribir "---opciones---";
		Escribir "1- baño";
		Escribir "2- Ducha";
		
		Si opciones == 1 Entonces
			Escribir "nombre: "+datos[0] Sin Saltar;
			Escribir ", genero: "  + datos[1] ;
			Escribir "total: $250";			
		Fin Si
		Si opciones == 2 Entonces
			Escribir "nombre: "+datos[0] Sin Saltar;
			Escribir ", genero: "  + datos[1] ;
			Escribir "total: $2500";			
		Fin Si
	
	FinSi	
	
Fin Funcion



Funcion ejercicio_4()
	Definir option Como Entero;
	option=0;
	Escribir "ingrese numero";
	Leer option;	
	Segun option Hacer
			0 :Escribir "cero";
			1: Escribir "Uno";
			2: Escribir "Dos";
			3: Escribir  "Tres";
			4: Escribir  "Cuatro";
			5: Escribir "Cinco";
			6: Escribir "Seis";
			7: Escribir "Siete";
			8: Escribir "Ocho";
			9: Escribir "Nueve";
			10: Escribir "diez";
			De Otro Modo:
				Escribir "opcion no valida";
	Fin Segun

Fin Funcion


Funcion ejercicio_5()
	Definir number Como Entero;
	Definir promedio Como Real;
	Definir cont Como Entero;
	
	number = -1;
	promedio = 0;
	cont = 0;
	
	Mientras number<>0 Hacer
		Escribir "Ingrese numeros o '+ConvertirATexto(0)+ 'para salir";
		Leer number;
		promedio = number+ promedio;
		cont = cont+1;
	Fin Mientras
	
	Si cont-1 > 0 Entonces
		Escribir "promedio =" Sin Saltar;
		Escribir (promedio/(cont-1));	
	SiNo
		Escribir "Muchas gracias.";
	Fin Si
	
Fin Funcion



Funcion ejercicio_6()
	
	Definir nombre Como Caracter;
	Definir intentos Como Entero;
	nombre ="";
	intentos =0;
	Repetir
		Escribir "ingrese nombres con j";
		Leer nombre;
		nombre =Minusculas(nombre);
		intentos =intentos+1;
		Limpiar Pantalla;
	Hasta Que nombre == "juan";
	Escribir "Ganaste!! intentos =" Sin Saltar;
	Escribir intentos;	
Fin Funcion



Funcion ejercicio_7()
	
	Definir nombres Como Caracter;
	Definir cantidad Como Entero;
	Dimension nombres[10];
	Dimension cantidad[10];
	
	Para i= 0 Hasta 9 Con Paso 1 Hacer
		Escribir i+1  Sin Saltar;
		Escribir "- ingrese nombre";
		Leer nombres[i];	
		Limpiar Pantalla;
	Fin Para
	
	Para i= 0 Hasta 9 Con Paso 1 Hacer
		Para j=i+1 Hasta 8 Con Paso 1 Hacer
			Si nombres[i] == nombres[j] Entonces
				cantidad[i] = cantidad[i] +1;
				nombres[j] = "";
			Fin Si
		Fin Para		
	Fin Para
	
	Para i= 0 Hasta 9 Con Paso 1 Hacer
		Si nombres[i] != "" Entonces
			Escribir "Nombre " nombres[i] " cantidad: " Sin Saltar;
			Escribir cantidad[i]+1;	
		Fin Si		
	Fin Para
	Esperar Tecla;
Fin Funcion


Funcion ejercicio_8 ()
	Definir nombres Como Caracter;
	Definir cantidad Como Entero;	
	Escribir "ingrese cantidad de alumnos";
	Leer cantidad;
	Dimension nombres[cantidad];
	
	Para i=0 Hasta cantidad-1 Con Paso 1 Hacer
		Escribir i+1 Sin Saltar;
		Escribir "- ingrese alumno";
		Leer nombres[i];		
		Limpiar Pantalla;
	Fin Para
	
	Para i=1 Hasta cantidad Con Paso 1 Hacer
		Si i mod 5 == 0  Entonces
			Escribir nombres[i-1] " ";						
		SiNo
			Escribir nombres[i-1] " - " Sin Saltar;		
		Fin Si		
	Fin Para
Fin Funcion


Funcion ejercicio_9 ()
	Definir datos Como Caracter;
	Definir cantidad Como Entero;
	Escribir "ingrese cantidad de alumnos";
	Leer cantidad;
	Dimension datos[cantidad ,4];
	
	Para i=0 Hasta cantidad -1 Con Paso 1 Hacer
		Escribir "ingrese nombre";
		Leer datos[i,0];
		Escribir "ingrese apellido";
		Leer datos[i,1];
		Escribir "ingrese fono";
		Leer datos[i,2];
		Escribir "ingrese email";
		Leer datos[i,3];		
		Limpiar Pantalla;
	Fin Para
	
	Para i=0 Hasta cantidad -1 Con Paso 1 Hacer
		Escribir " nombre: " +datos[i,0] Sin Saltar;		
		Escribir ", apellido: "+datos[i,1] Sin Saltar;		
		Escribir ", fono: " +datos[i,2] Sin Saltar;		
		Escribir ", email " datos[i,3] Sin Saltar;
		Escribir "";	
	Fin Para
	
	
Fin Funcion


Funcion option <- menu ()
	Escribir "1.Secuencial:";
	Escribir "2.Condicional Si entonces:";
	Escribir "3.Condicional Si entonces anidado:";
	Escribir "4.Condicional según:";
	Escribir "5.Repetitiva Mientras";
	Escribir "6.Repetitiva Repetir";
	Escribir "7.repetitiva Para";
	Escribir "8.Arreglo Simple";
	Escribir "9.Arreglo Bidimensional";
	Escribir "10.Salir";
	Escribir "ingrese opcion";
	Leer option;
	
Fin Funcion



Algoritmo Prueba
	Definir option Como Entero;
	Repetir
		option = menu();
		Limpiar Pantalla;
		Segun option Hacer
			1: ejercicio_1();
			2: genero = ejercicio_2();
			3: ejercicio_3();	
			4:ejercicio_4();
			5:ejercicio_5();
			6: ejercicio_6();	
			7: ejercicio_7();	
			8: ejercicio_8();
			9: ejercicio_9();	
		Fin Segun
		limpiaPantalla();	
	Hasta Que option == 10
FinAlgoritmo
