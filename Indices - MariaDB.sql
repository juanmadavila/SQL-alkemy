CREATE TABLE persona(
id INT,
nombre VARCHAR(45)
)

INSERT INTO persona (id, nombre) VALUES (3, 'Juan');

INSERT INTO persona (id, nombre) VALUES (1, 'Maria');

SELECT * from persona;

alter table persona add PRIMARY key (id);

#Al agregar la clave primaria, los registros se han mostrado en un orden secuencial ascendente. 
