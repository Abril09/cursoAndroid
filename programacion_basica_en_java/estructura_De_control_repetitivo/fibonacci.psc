Funcion numeroAnterior <- fibonacci ( numeroEvaluar )
	numeroAnterior = - 1;
	fibo = 0;
	b = 1;
	a = 0;
	si numeroEvaluar==0 Entonces
		numeroAnterior = 0;
	FinSi
	Para i=1 Hasta numeroEvaluar Con Paso 1 Hacer
		fibo = a + b;
		si fibo == numeroEvaluar Entonces
			numeroAnterior = b;
		FinSi
		a = b;
		b = fibo;
	Fin Para	
Fin Funcion


Algoritmo ejercicioFibanacci
	Definir numeroFibonacci Como Entero;
	Escribir "Ingrese numero a verificar";
	leer z;
	numeroFibonacci = fibonacci(z);
	Si numeroFibonacci >= 0 Entonces
		Escribir "numero anterior fibonacci: " + ConvertirATexto(numeroFibonacci);
	SiNo
		Escribir "numero no pertence a serie fibonacci"; 
	Fin Si	
	
	
	

FinAlgoritmo