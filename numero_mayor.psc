Algoritmo numero_mayor
	
	//Ingreso de datos para saber la cantidad de numeros que se va a evualuar 
	Escribir "Ingrese la cantidad de numeros que se va a evaluar"
	leer n_nums
	
	//Creacion de dimensiones para almacenar los numeros 
	Dimension numbers[n_nums]
	
	//Ingreso de numeros que se va a evaluar para almacenarlos en la matriz
	Escribir "...Ingreso de numeros a evaluar..."
	Para i = 0 Hasta n_nums - 1 Con Paso 1 Hacer
		Escribir "Ingrese un numero",  "[Contador de numeros #", i + 1, "]"
		Leer numbers[i]
	Fin Para
	//Creacion de bucle for para saber el numero mayor
	highest_num = numbers[1]
	
	Para i = 0 Hasta n_nums - 1 Con Paso 1 Hacer
		patas = numbers[i]
		Si patas > highest_num Entonces
			highest_num = patas
		Fin Si
	Fin Para
	
	//output de numero mayor 
	Escribir " El numero mayor de la lista es: ", highest_num
FinAlgoritmo
