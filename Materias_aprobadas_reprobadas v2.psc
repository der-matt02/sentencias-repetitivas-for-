Algoritmo Materias_aprobadas_reprobadas
	//Definicion de variables 
	Definir n_subjects Como Entero
	Definir n_average Como Real
	n_subjects = 5
	
	//variables para contar materias aprovadas y reprobadas 
	edward_approved = n
	edward_disapproved = n
	
	alondra_approved = n
	alondra_disapproved = n
	
	paco_approved = n
	paco_disapproved = n
	//creacion de arreglos para asignacion de valores 
    Dimension edward[n_subjects]
	Dimension alondra[n_subjects]
	Dimension paco[n_subjects]
	Dimension subjects[n_subjects]
	
	//UI menu 
	Escribir "...Menu..."
	Escribir "1.  Presione 1 para ingreso de materias que reciben los estudiantes"
	Leer input_subjects
	Limpiar Pantalla
	
	//Bucle While para realizar en ingreso de la tecla correcta 
	Mientras input_subjects <> 1 Hacer
		Escribir "ERROR"
		Escribir "1.  Presione 1 para ingreso de materias que reciben los estudiantes"
		Leer input_subjects
		Limpiar Pantalla
	Fin Mientras
	
	//ingreso menu 
	Segun input_subjects Hacer
		1:
			Escribir "..Ingreso de materias.."
			Para i = 0 Hasta n_subjects - 1 Con Paso 1 Hacer
				Escribir "Ingrese la materia # ", i+1
				Leer subjects[i]
			Fin Para
			
			Escribir "Presione 2 para ingresar las notas de Eduardo, Alondra, Paco"
			Leer input_subjects
			Limpiar Pantalla
			
			//Bucle While para realizar en ingreso de la tecla correcta 
			Mientras input_subjects <> 2 Hacer
				Escribir "ERROR"
				Escribir "Presione 2 para ingresar las notas de Eduardo, Alondra, Paco"
				Leer input_subjects
				Limpiar Pantalla
			Fin Mientras
			
			Segun input_subjects Hacer
				2:
					//Notas de Eduardo
					Escribir "..Eduardo.."
					Escribir "Ingrese las notas de Eduardo"
					Para i = 0 Hasta n_subjects - 1 Con Paso 1 Hacer
						Escribir subjects[i]
						Leer edward[i]
					Fin Para
					
					//Notas de alondra
					Escribir "..Alondra.."
					Escribir "Ingrese las notas de Eduardo"
					Para i = 0 Hasta n_subjects - 1 Con Paso 1 Hacer
						Escribir subjects[i]
						Leer alondra[i]
					Fin Para
					
					//Notas de paco
					Escribir "..Alondra.."
					Escribir "Ingrese las notas de Eduardo"
					Para i = 0 Hasta n_subjects - 1 Con Paso 1 Hacer
						Escribir subjects[i]
						Leer paco[i]
					Fin Para
			
				De Otro Modo:
					Escribir "Error"
			Fin Segun
			
		De Otro Modo:
			Escribir "Error"
	Fin Segun
	
	//bucle con condicional para saber las materias aprobadas y reprobadas
	//Bucle y Condicional para Eduardo
	Escribir "Materias Aprobadas y Reprobadas Eduardo"
	Para i = 0 Hasta n_subjects - 1 Con Paso 1 Hacer
		Si edward[i] >= 6 Entonces
			Escribir "Aprobado"
			edward_approved = edward_approved + 1
		SiNo
			Escribir "Reprobado"
			edward_disapproved = edward_disapproved + 1
		Fin Si
	Fin Para
	
	//Bucle y Condicional para Alondra 
	Escribir "Materias Aprobadas y Reprobadas de Alondra"
	Para i = 0 Hasta n_subjects - 1 Con Paso 1 Hacer
		Si alondra[i] >= 6 Entonces
			Escribir "Aprobado"
			alondra_approved = alondra_approved + 1
		SiNo
			Escribir "Reprobado"
			alondra_disapproved = alondra_disapproved + 1
		Fin Si
	Fin Para
	
	//Bucle y Condicional para paco
	Escribir "Materias Aprobadas y Reprobadas de Paco"
	Para i = 0 Hasta n_subjects - 1 Con Paso 1 Hacer
		Si paco[i] >= 6 Entonces
			Escribir "Aprobado"
			paco_approved = paco_approved + 1
		SiNo
			Escribir "Reprobado"
			paco_disapproved = paco_disapproved + 1
		Fin Si
	Fin Para
	
	Limpiar Pantalla
	
	//Output de cantidad de Materias aprobadas de cada alumno 
	Escribir "Materias aprobadas y reprobadas de cada alumno"
	Escribir " Estado ", " Eduardo ", " Alondra ", " Paco "
	Escribir " Aprobado  ", " ", edward_approved, "    ", "    ", alondra_approved, "   ", "   ", paco_approved, " "
	Escribir " Reprovadas", " ", edward_disapproved, "    ", "    ", alondra_disapproved, "   ", "   ", paco_disapproved, " "
	
FinAlgoritmo