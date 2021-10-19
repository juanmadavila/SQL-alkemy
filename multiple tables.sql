#Nombre, apellido y cursos que realiza cada estudiante
select e.nombre, e.apellido, c.nombre as 'curso' from estudiante e, curso c, inscripcion i where e.legajo = i.ESTUDIANTE_legajo and c.codigo = i.CURSO_codigo;

#Nombre, apellido y cursos que realiza cada estudiante, ordenados por el nombre del curso
select e.nombre, e.apellido, c.nombre as 'curso' from estudiante e, curso c, inscripcion i where e.legajo = i.ESTUDIANTE_legajo and c.codigo = i.CURSO_codigo order by curso;

#Nombre, apellido y cursos que dicta cada profesor
select p.nombre, p.apellido, c.nombre as 'curso' from profesor p inner join curso c on c.PROFESOR_id = p.id;

#Nombre, apellido y cursos que dicta cada profesor, ordenados por el nombre del curso
select p.nombre, p.apellido, c.nombre as 'curso' from profesor p inner join curso c on c.PROFESOR_id = p.id order by curso;

#Cupo disponible para cada curso (Si el cupo es de 35 estudiantes y hay 5 inscriptos, el cupo disponible será 30)
select c.nombre as 'curso', c.cupo as 'cupo total', count(i.numero) as 'cantidad de inscriptos', round(sum(c.cupo)/count(i.numero)-count(i.numero),0) as 'cupo disponible' from curso c, inscripcion i where i.CURSO_codigo = c.codigo group by c.nombre;

#Cursos cuyo cupo disponible sea menor a 10
select c.nombre as 'curso', c.cupo as 'cupo total', count(i.numero) as 'cantidad de inscriptos', round(sum(c.cupo)/count(i.numero)-count(i.numero),0) as 'cupo disponible' from curso c, inscripcion i where i.CURSO_codigo = c.codigo and ( select sum(c.cupo)-count(i.numero) < 10 ) group by c.nombre;


