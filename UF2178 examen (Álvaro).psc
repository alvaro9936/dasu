Algoritmo menu
	tam es numero;//
	espera es caracter;
	eleccion es caracter;
	textoescrito es caracter;
	// Le damos a 1 un array de 8
	Dimension pid[8];
	pid[1]<-2
	pid[2]<-1
	pid[3]<-6
	pid[4]<-7
	pid[5]<-8
	pid[6]<-3
	pid[7]<-4
	pid[8]<-5
    //Le damos un 2 array de 8 
	Dimension contenido[8]
	contenido[1]<-'Facura cliente Fujitsu'
	contenido[2]<-'Por favor, no molestar'
	contenido[3]<-'Manual de Java'
	contenido[4]<-'El carnaval.El carnaval es una celebracion que tiene lugar inmediatamente antes de la cuaresma '
	contenido[5]<-'$'
	contenido[6]<-'$'
	contenido[7]<-'Examen UF2178'
	contenido[8]<-'Hola, ¿cómo estás?'
	Repetir
		//mostrar menu
		//ingresamos un opcion
	Escribir "Escoge una opcion de la 1 a la 6:"
	Escribir "1.Visualizacion de documentos"
	Escribir "2.Busqueda de documentos"
	Escribir "3.Edicion de documentos"
	Escribir "4.Crear documentos"
	Escribir "5.Borrar documentos"
	Escribir "6.Impresion de documentos"
	Escribir "Pulsa s o S para salir"
	Leer eleccion
	//A continuacion se procedera a meter el codigo por el cual se escogen las alternativas.
	Segun eleccion hacer
		
		"1":
			Escribir "Visualizacion de documentos"
			visualizar(pid,contenido,a)
		"2": 
			Escribir "Busqueda de documentos"
			//Leer tam;
			Leer c
			indice(contenido,c)
		
		"3":
			Escribir "3.Edicion de documentos"
			//Leer tam;
			//Leer espera;
			edicion(pid,contenido, a)
		
		"4":
			Escribir "4.Crear documentos"
			buscarhueco(contenido, hueco)//creamos el documento con buscarhueco lo que equivale a contenido
			si hueco = 0 entonces 
				Escribir 'La tabla de documentos esta llena'
			SiNo
				escribir 'Escriba el documento'
				Leer textoescrito
				si textoescrito= '$' o textoescrito= '' Entonces
					Escribir 'Me has metido un texto vacio'
				SiNo
					contenido[hueco]=textoescrito
					buscarmaxpid(pid, maximo)
					pid[hueco]=maximo+1
				FinSi
			FinSi
			//Leer tam;
			//Leer espera;
		
		"5":
			Escribir "5.Borrar documentos"
			//Leer tam;
			//Leer espera;
			borrardocumentos(contenido,a)//aqui nombramos al subproceso borrar documentos
		
		"6":
			Escribir "6.Impresion de documentos"
			//Leer tam;
			//Leer espera;
	FinSegun
Hasta Que eleccion="s" o eleccion="S"
Escribir "gracias por venir a ver mi menu tan guay, ¡CAMPEON!"
FinAlgoritmo
// A continuacion haremos un subproceso para visualizar los arrays de pid,contenido,a)
SubProceso visualizar(v Por Referencia,v1 Por Referencia,a por valor)
	Escribir 'Has elegido ver los documentos, introduzca el indice del documento por favor'
	Leer a
	Para i<-1 hasta 8 //Esto recorre un for de 1 a 8 
		si v[i] = a entonces//aqui dice que si encuentra el primer array escribir
			Escribir v[i]
			si v1[i] = '' entonces//Aqui lo que dice es encontrar el segundo array si lo encuentra vacio enseñar $
				Escribir '$'
			SiNo
				Escribir v1[i]//sino lo encuentra mostrar contenido
			FinSi
		FinSi
	FinPara
	Escribir 'pulsa intro para continuar'
	Leer intro
FinSubProceso

SubProceso indice(v por referencia, c por valor)//aqui nombro las dos variables
	Escribir 'El texto que aparecera por pantalla es el siguiente'//le pongo un texto para que se mentalice
	Escribir v[c]//Y acontinuacion le muestro el texto 
	Leer intro
FinSubProceso

SubProceso edicion(v por referencia, v1 por referencia,a por valor) 
	Escribir 'La eleccion que has elegido es la 3'
	leer a 
	Para i<-1 hasta 8
		si	v[i]= a entonces 
			Escribir 'Introduce el texto'	
			leer d //leemos el paso del texto que nos quieren dar
			v1[a]= v1[a]+d//aqui lo que hacemos al contenido+valor añadirla el texto 
		FinSi
	FinPara
	Escribir v1[a]
	Leer intro
FinSubProceso


//En el subproceso lo que hacemos es con el contenido y valor hacemos referencia
SubProceso buscarhueco( v1 por referencia, a por referencia)
	i=1
	noencontrado=Verdadero
	a=0//el valor lo inicializamos en 0
	Mientras i<9 y noencontrado Hacer
		si v1[i]= '$' o v1[i]= '' Entonces//aqui le pedimos a contenido que si encuentra valor nos muestre $ sino que muestre nada
			a=i
			noencontrado=Falso
		FinSi
		i=i+1
	FinMientras
FinSubProceso

//Con este subproceso lo que hacemos es buscar el maxpid
SubProceso buscarmaxpid( v por referencia, max por referencia)
	max=0 
	Para i<-1 hasta 8 con paso 1 Hacer
		si v[i]>max entonces //en el pid lo que vamos hacer es recorrer to del array para luego
			max=v[i]
		FinSi
	FinPara
FinSubProceso

SubProceso borrardocumentos(v1 por referencia, a por valor) 
	Leer a
	Para i<-1 hasta 8 //aqui que recorra el array buscando como
		si v1[i]= a
			v1[i] <-'$'
		FinSi
	FinPara
	Escribir 'Has borrado el numero:',a //Con esto lo que haces es borrar el numero que quieres eliminar
	Leer intro
FinSubProceso
	