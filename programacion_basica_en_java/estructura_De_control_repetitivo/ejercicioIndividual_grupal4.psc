
Funcion  mostrarCalificacionesYnombre ( nombre,calificaciones,estadoContador)
	Limpiar Pantalla;
	Escribir "Nombre:" + nombre; 
	Escribir "Estado:" Sin Saltar;
	
	Si estadoContador[0] >=2 Entonces
		Escribir "contratado"  ; 
	SiNo
		Si estadoContador[1] == 4  Entonces
			Escribir "archivado" ;	
		SiNo
			Escribir "rechazado" ;
		fin Si
	Fin Si
	Escribir "calificaciones";
	Para i = 0 Hasta 4 Con Paso 1 Hacer	
		Escribir "Nota N° " +ConvertirATexto(i+1)+" = "+ConvertirATexto(calificaciones[i]) ;   
	FinPara
	
Fin Funcion



Algoritmo ejercicioNotasEstado
	Definir nombre Como Caracter;
	Dimension calificaciones[5];
	Dimension estadoContador[2];
	estadoContador[0]=0;
	estadoContador[1]=0;	
	
	Escribir "ingrese nombre:";
	Leer  nombre;
	
	Para i = 0 Hasta 4 Con Paso 1 Hacer	
			Escribir "ingrese calificacion N° " + ConvertirATexto(i+1);
			Leer calificaciones[i];
			Si calificaciones[i] == 9 Entonces
				estadoContador[0]=estadoContador[0]+1;	
			Fin Si
			Si calificaciones[i] >= 7 y calificaciones[i] <9  Entonces
				estadoContador[1] = estadoContador[1]+1;		
			Fin Si	
	FinPara
	
	mostrarCalificacionesYnombre(nombre,calificaciones,estadoContador);
	
FinAlgoritmo
