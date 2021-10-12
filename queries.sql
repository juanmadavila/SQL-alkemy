select nombre, apellido, fecha_nacimiento from profesor order by fecha_nacimiento asc;

select * from profesor where salario >= 65000;

select * from profesor where fecha_nacimiento between 1980 and 1989;

select * from profesor limit 5;

select * from profesor where apellido like 'P%';

select * from profesor where fecha_nacimiento between 1980 and 1989 and salario > 80000;
