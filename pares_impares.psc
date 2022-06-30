Algoritmo pares_impares
	//ingreso de cantidad de numeros a evaluar
	Escribir "Ingrese la cantidad de numeros que desea evaluar"
	Leer n_nums 
	
	//Creacion de arreglo para almacenar datos 
	Dimension numbers[n_nums]

	//Input de datos para evaluarlos con bucle for  
	Escribir "...Ingreso de numeros a evaluar..."
	Para i = 0 Hasta n_nums - 1 Con Paso 1 Hacer
		Escribir "Ingrese un numero",  "[Contador de numeros #", i + 1, "]"
		Leer numbers[i]
	Fin Para
	
	//Creacion de bucle for para saber los numeros pares e impares
	Para i = 0 Hasta n_nums - 1 Con Paso 1 Hacer
		Si numbers[i] MOD 2 = 0 Entonces
			peers = peers + 1
			
		SiNo
			odd = odd + 1
			
			
		Fin Si
	Fin Para
	
	//output de datos 
	Escribir " Pares ", " Impares " 
	Escribir "   ", peers, "   ", "    ", odd, " "
FinAlgoritmo
