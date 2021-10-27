#Escriba una consulta que devuelva el legajo y la cantidad de cursos que realiza cada estudiante.
select e.legajo, count(i.numero) as 'cantidad de cursos que realiza' from estudiante e, inscripcion i where i.ESTUDIANTE_legajo = e.legajo group by legajo;

#Escriba una consulta que devuelva el legajo y la cantidad de cursos de los estudiantes que realizan más de un curso.
select e.legajo, count(i.numero) as 'cantidad de cursos que realiza' from estudiante e, inscripcion i where i.ESTUDIANTE_legajo = e.legajo group by legajo having count(i.numero) > 1;

#Escriba una consulta que devuelva la información de los estudiantes que no realizan ningún curso.
select * from estudiante where legajo not in (select ESTUDIANTE_legajo from inscripcion);

/*
#Escriba para cada tabla, los index (incluyendo su tipo) que tiene cada una.
TABLA       	INDICE            	 		TIPO 
profesor    ->  PRIMARY KEY id(INT)  		        clousterizado 
				
curso       ->  PRIMARY KEY codigo(INT) 		clousterizado
		FOREIGN KEY PROFESOR_id(INT)
                
inscripcion ->  PRIMARY KEY numero(INT)  		clousterizado
		FOREIGN KEY CURSO_codigo(INT)
                FOREIGN KEY ESTUDIANTE_legajo(INT)
                
estudiante  ->  PRIMARY KEY legajo(INT)  		clousterizado				
*/

#Liste toda la información sobre los estudiantes que realizan cursos con los profesores de apellido “Pérez” y “Paz”.
select c.nombre as 'nombre del curso', p.apellido 'apellido del profesor', e.* 
from curso c, profesor p, estudiante e, inscripcion i 
where p.id = c.PROFESOR_id and c.codigo = i.CURSO_codigo and e.legajo = i.ESTUDIANTE_legajo and p.apellido in ("perez", "paz");
