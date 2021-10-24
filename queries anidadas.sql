#cantidad de profesores que dictan más de un curso en el turno Noche
select count(*) 'cantidad de profesores' from (select p.nombre, count(c.turno) from profesor p inner join curso c on c.PROFESOR_id = p.id and turno like 'noche' group by nombre having count(*) > 1) as queryanidada;

#información de todos los estudiantes que no realizan el curso con código 105
select e.*, i.CURSO_codigo, c.nombre 'curso', c.descripcion 'descripcion del curso' from estudiante e, inscripcion i, curso c where e.legajo = i.ESTUDIANTE_legajo and i.CURSO_codigo = c.codigo and CURSO_codigo not in (105);

