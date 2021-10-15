#cantidad de estudiantes de la carrera Mecánica
select count(*) from estudiante where carrera like 'mecanica';

#salario mínimo de los profesores nacidos en la década del 80.
select min(salario) as 'salario minimo' from profesor where fecha_nacimiento between '1980-01-01' and '1989-31-12';

#cantidad de pasajeros por país
select count(pasajero.idpasajero) as 'cantidad de pasajeros', pais.nombre as 'pais' from pasajero inner join pais on pasajero.idpais =  pais.idpais group by pais.nombre;

#suma total de pagos
select count(idpago) from pago;

#suma total de montos
select sum(monto) from pago;

#suma de todos los pagos que realizó un pasajero. El monto debe aparecer con dos decimales.
select round(sum(pago.monto),2) as 'monto total', pasajero.nombre as 'pasajero' from pago natural join pasajero group by idpasajero; 

#Promedio de los pagos que realizó un pasajero.
select avg(pago.monto) as 'monto de pago promedio', pasajero.nombre as 'pasajero' from pago natural join pasajero group by idpasajero; 